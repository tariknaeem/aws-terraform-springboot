resource "aws_elastic_beanstalk_application" "ebs-app" {
  depends_on = ["aws_db_instance.rds-db"]
  name = "my-springboot-application"
  description = "This is a springboot java elastic beanstalk environment"
  appversion_lifecycle {
    service_role = "arn:aws:iam::12345678932:role/aws-service-role/elasticbeanstalk.amazonaws.com/AWSServiceRoleForElasticBeanstalk"
    max_count = 128
    delete_source_from_s3 = false
  }
}