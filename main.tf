provider "aws" {
  version = "~> 2.0"
  region  = "us-west-2" # Setting my region to London. Use your own region here
}
resource "aws_rds_cluster" "default" {
  cluster_identifier      = "dev"
  engine                  = "aurora-mysql"
  engine_version          = "5.7.mysql_aurora.2.04.3"
  availability_zones      = ["us-west-2a", "us-west-2b", "us-west-2c"]
  database_name           = "mydb"
  master_username         = "admin"
  master_password         = "password"
  backup_retention_period = 5
  preferred_backup_window = "07:00-09:00"
}
