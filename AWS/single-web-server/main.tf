
resource "aws_instance" "main" {
    ami           = var.ami
    instance_type = var.instance_type
    user_data     = <<-EOF
    #!/bin/bash
    echo "Web Server" > index.html
    nohup busybox http -f -p 8080 &
    EOF
}