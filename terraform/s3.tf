resource "aws_s3_bucket" "codepipeline_artifacts" {
  bucket = "codepipeline-artifacts-akash-unique"

  force_destroy = true
}

resource "aws_s3_bucket_acl" "codepipeline_artifacts_acl" {
  bucket = aws_s3_bucket.codepipeline_artifacts.id
  acl    = "private"
}
