#  variables /functions/modules  (DRY)
# DO NOT HARD CODE OR REPEAT CODE

#export GIT_SSH_COMMAND='ssh -i "/mnt/c/Users/(location where code is)"



variable"access_key" {
    default=""
}

variable"secret_key" {
    default=""
}

variable"region" {
    default=""
}

variable"ami" {
    default=""
}

variable"instance_type" {
    default="t2.micro"
}