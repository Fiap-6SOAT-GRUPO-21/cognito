module "cognito" {
  source       = "./modules/cognito"
  project_name = var.project_name
}

resource "aws_ssm_parameter" "cognito_client_id" {
  name  = "/techchallenge/cognito/client_id"
  type  = "String"
  value = module.cognito.cognito_client_id
}

resource "aws_ssm_parameter" "cognito_userpool_id" {
  name  = "/techchallenge/cognito/userpool_id"
  type  = "String"
  value = module.cognito.cognito_userpool_id
}