resource "aws_ssm_parameter" "mysql_sg" {
  name  = "/${var.project_name}/${var.environment}/mysql_sg_id"
  type  = "String"
  value = module.mysql_sg.sg_id
  overwrite = true
}