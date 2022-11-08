resource "aws_organizations_policy" "protect_security_ou" {
  name = "Prevent S3 buckets from being deleted from Audit AWS account"

  content = <<CONTENT
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect":"Deny",
      "Action": [
        "s3:DeleteObject",
        "s3:DeleteObjectVersion",
        "s3:DeleteBucketPolicy",
        "s3:DeleteBucket"
      ],
      "Resource": "*"
    }
  ]
}
CONTENT
}

resource "aws_organizations_policy_attachment" "protect_security_ou_attach" {
  policy_id = aws_organizations_policy.protect_security_ou.id
  target_id = var.security_ou_id
}
