module "files" {
  source      = "./modules/files"
}
  
variable "prefix" {
  description = "The used prefix to add to output"
  type        = string
  default     = "read"
}

variable "content" {
  description = "The content of the files"
  type        = string
  default     = "O48WRX"
}
