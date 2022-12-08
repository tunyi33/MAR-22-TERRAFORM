


#type.name.attribute for SG  (attribute/output)
#curl http://ip:8080

resource "aws_instance" "main" {
    ami           = var.ami
    instance_type = var.instance_type
    vpc_security_group_ids = [
        vpc_security_group.main.id

    ]            
    
    user_data     = <<-EOF
     #!/bin/bash
     echo "Hello from the other side" > index.html
     nohup busybox httpd -f -p ${var.web_port} &
    EOF

    tags = {
        Name="single-web-server-sg"
    }
}