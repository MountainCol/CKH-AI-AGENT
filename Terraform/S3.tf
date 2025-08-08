resource "aws_s3_bucket" "ai-agent-chatbot" {
    bucket = "ai-agent-chatbot-${random_string.random_suffix.result}"
    force_destroy = true
} 

resource "aws_s3_bucket_versioning" "ai-agent-chatbot" {
  bucket = aws_s3_bucket.ai-agent-chatbot.id
  versioning_configuration {
    status = "Enabled"
  }     
}