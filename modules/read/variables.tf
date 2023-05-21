module "files" {
  source = "./modules/files"
}

variable "content" {
  description = "The content of the files"
  type        = string
  default     = "O48WRX"
}
