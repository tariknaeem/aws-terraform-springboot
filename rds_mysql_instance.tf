resource "aws_db_instance" "rds-db" {
  identifier = "mydbinstance"
  allocated_storage = "20"
  engine = "mysql"
  engine_version = "5.7.21"
  instance_class = "db.t2.small"
  name = "mydb"
  username = var.db_username
  password = var.db_password
  publicly_accessible = false
  vpc_security_group_ids = ["rds_security_group_id"]
  skip_final_snapshot = true
}