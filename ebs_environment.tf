resource "aws_elastic_beanstalk_environment" "ebs-env" {

  depends_on = ["aws_elastic_beanstalk_application_version.ebs-app-ver"]
  name = "my-sample-application-dev"
  application = "${aws_elastic_beanstalk_application.ebs-app.name}"
  solution_stack_name = "64bit Amazon Linux 2018.03 v2.7.4 running Java 8"
  cname_prefix = "my-sample-application-dev"
  version_label = "${aws_elastic_beanstalk_application_version.ebs-app-ver.name}"

  setting {
    "namespace" = "aws:elasticbeanstalk:application:environment""name" = "SERVER_PORT""value" = "5000"
  }

  setting {
    "namespace" = "aws:elasticbeanstalk:application:environment""name" = "SPRING_DATASOURCE_URL""value" = "jdbc:mysql://${aws_db_instance.rds-db.endpoint}/${aws_db_instance.rds-db.name}?useSSL=false"
  }

  setting {
    "namespace" = "aws:elasticbeanstalk:application:environment""name" = "SPRING_DATASOURCE_USERNAME""value" = "db-username"
  }

  setting {
    "namespace" = "aws:elasticbeanstalk:application:environment""name" = "SPRING_DATASOURCE_PASSWORD""value" = "db-password"
  }

}