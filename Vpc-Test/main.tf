module "roboshop" {
  source = "../aws-vpc-terraform"
  project_name = var.project_name
  environment = var.environment
  common_tags = var.common_tags
  vpc_tags = var.vpc_tags
  public_cidr_block = var.public_cidr_block
  private_cidr_block = var.private_cidr_block
  database_cidr_block = var.database_cidr_block
  is_peering_required = var.is_peering_required
}