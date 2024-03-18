
resource "aws_instance" "ec2_examples" {
    ami = "ami-079db87dc4c10ac91"
    instance_type = "t2.micro"
    tags = {
      Name = "stg"
    }
}
#testS

