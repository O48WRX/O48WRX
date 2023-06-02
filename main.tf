module "files" {
  source  = "./modules/files"
  content = "test"
  name    = "name"
}
  
module "read" {
  source  = "./modules/read"
}

module "write" {
  source = "./modules/write"
} 
  
module "data" {
   source = "./modules/data"
   file_path = module.files.example_output[0]
   depends_on = [module.files]
}  

output "file_id" {
   value = module.data.file_id
 }
  
output "answers" {
  value  = "${module.write.write_answer_1}, ${module.write.write_answer_2}, ${module.write.write_answer_3}, ${module.write.write_answer_4}, ${module.write.write_answer_5}"
}
