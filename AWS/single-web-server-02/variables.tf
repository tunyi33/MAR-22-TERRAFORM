#variables for infra
# terraform plan -var 'secret_key=abcgdhjdkfk' --> if it prompts for keys

variable"access_key" {
    default=""
}

variable"secret_key" {
    default=""
}

variable"region" {
    default=""
}

variable"web_port" {
    default=8080
    type= number
    description="port on which useers can connect to busybox web server"
}

variable"protocol" {
    default="tcp"
    type= string
    description="protocol for ingree rule in security group"
}

variable"cidr_blocks" {
    default="0.0.0.0/0"
    type= string
    
}

variable"ami" {
    default=""
}

variable"instance_type" {
    default="t2.micro"
}
