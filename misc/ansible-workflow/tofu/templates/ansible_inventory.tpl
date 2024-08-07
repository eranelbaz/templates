[${group_name}]\n%{ for instance in instances ~}\n${instance.private_ip}\n%{ endfor ~}
