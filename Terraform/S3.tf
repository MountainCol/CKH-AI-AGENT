resource "aws_s3_bucket" "AI-Agent-Chatbot" {
    bucket = "AI-Agent-Chatbot-${random_string.random_suffix.result}"
    force_destroy = true
} 

resource "aws_s3_bucket_versioning" "AI-Agent-Chatbot" {
  bucket = aws_s3_bucket.AI-Agent-Chatbot.id
  versioning_configuration {
    status = "Enabled"
  }
}