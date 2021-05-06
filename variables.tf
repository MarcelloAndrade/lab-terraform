variable "amis" {
    type = map

    default = {
        "amazon-linux-2-sa-east-1" = "ami-05373777d08895384"
    }  
}

variable "ips-ssh-acesso-remoto" {
    type = list
    default = ["191.181.57.41/32", "192.181.57.41/32"]
}

variable "key-ssh-terraform" {
    type = string
    default = "key-ssh-terraform"  
}