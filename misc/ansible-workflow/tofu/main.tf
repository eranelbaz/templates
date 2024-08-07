output "ansible_inventory" {                                                                                                                               
  value = templatefile("templates/ansible_inventory.tpl", {                                                                                                
    group_name = "ExampleGroup",                                                                                                                           
    instances  = [                                                                                                                                         
      {                                                                                                                                                    
        private_ip = "192.168.1.1"                                                                                                                         
      },                                                                                                                                                   
      {                                                                                                                                                    
        private_ip = "192.168.1.2"                                                                                                                         
      }                                                                                                                                                    
    ]                                                                                                                                                      
  })                                                                                                                                                       
}
