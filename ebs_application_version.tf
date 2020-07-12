resource "aws_elastic_beanstalk_application_version" "ebs-app-ver" {
  depends_on = ["aws_elastic_beanstalk_application.ebs-app"]
  application = "${aws_elastic_beanstalk_application.ebs-app.name}"
  bucket = "my.application.artefact"
  key = "deployables/my-sample-application.jar"
  name = "v1"
}