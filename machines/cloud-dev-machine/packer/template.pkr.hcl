variable "digital_ocean_api_token" {
  type = string
}

variable "aws_access_key" {
  type = string
}

variable "aws_secret_key" {
  type = string
}

variable "dev_server_username" {
  type = string
}

variable "dev_server_password" {
  type = string
}

locals {
  base_system_image = "ubuntu-20-04-x64"
  region = "SFO3"
  size = "s-1vcpu-1gb"
  timestamp = regex_replace(timestamp(), "[- TZ:]", "")
}

source "digitalocean" "default" {
  api_token    = "${var.digital_ocean_api_token}"
  image        = "${local.base_system_image}"
  region       = "${local.region}"
  size         = "${local.size}"
  ssh_username = "root"
}

source "amazon-ebs" "default" {
  access_key    = "${var.aws_access_key}"
  ami_name      = "packer example ${local.timestamp}"
  instance_type = "t2.micro"
  region        = "us-east-1"
  secret_key    = "${var.aws_secret_key}"
  source_ami_filter {
    filters = {
      name                = "ubuntu/images/*ubuntu-focal-20.04-amd64-server-*"
      root-device-type    = "ebs"
      virtualization-type = "hvm"
    }
    most_recent = true
    owners      = ["099720109477"]
  }
  ssh_username  = "ubuntu"
  ssh_interface = "public_ip"
}

build {
  sources = [
    # "source.digitalocean.default",
    "source.amazon-ebs.default"
  ]

  # install ansible and git
  provisioner "shell" {
    # script = "../ansible/install.sh"
    inline = [
      "sleep 30",
      "sudo apt update",
      "sudo apt upgrade -y",
      "sudo apt-get update",
      "sudo apt-get upgrade -y",
      "sudo apt install -y git",
      "sudo apt install -y software-properties-common",
      "sudo apt-add-repository --yes --update ppa:ansible/ansible",
      "sudo apt install -y ansible"
    ]
  }

  # create ansible credentials file
  provisioner "shell-local" {
    inline = [
      "echo \"username: ${var.dev_server_username}\" >> ../ansible/credentials.yml",
      "echo \"password: ${var.dev_server_password}\" >> ../ansible/credentials.yml"
    ]
  }

  # run dev server playbook
  provisioner "ansible-local" {
    playbook_file = "../ansible/playbook.yml"
    playbook_dir  = "../ansible"
  }

  # uninstall ansible
  provisioner "shell" {
    inline = [
      "sudo apt remove -y software-properties-common ansible",
      "sudo apt autoremove -y"
    ]
  }

  post-processor "vagrant" {}
}
