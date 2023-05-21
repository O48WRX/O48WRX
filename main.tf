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
  
  answer_1 = module.write.answer_1
  answer_2 = module.write.answer_2
  answer_3 = module.write.answer_3
  answer_4 = module.write.answer_4
  answer_5 = module.write.answer_5
}
