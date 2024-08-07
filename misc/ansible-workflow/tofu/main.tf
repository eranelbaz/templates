provider "aws" {
  region = "us-west-2" # Change this to your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" # Change this to your desired AMI ID
  instance_type = "t2.micro" # Change this to your desired instance type

  network_interface {
    network_interface_id = aws_network_interface.example.id
    device_index         = 0
  }

  tags = {
    Name = "example-instance"
  }
}

resource "aws_network_interface" "example" {
  subnet_id                  = "subnet-0bb1c79de4EXAMPLE" # Change this to your subnet ID
  associate_public_ip_address = true

  tags = {
    Name = "example-network-interface"
  }
}

output "ansible_inventory" {                                                                                                                               
  value = templatefile("templates/ansible_inventory.tpl", {                                                                                                
    group_name = "ExampleGroup",                                                                                                                           
    instances  = [                                                                                                                                         
      {                                                                                                                                                    
        private_ip = aws_instance.example.public_ip                                                                                                                         
      }                                                                                                                                             
    ]                                                                                                                                                      
  })                                                                                                                                                       
}
