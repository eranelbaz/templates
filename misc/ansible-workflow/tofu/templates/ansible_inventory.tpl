[${group_name}]
%{ for instance in instances ~}
${instance.private_ip}
%{ endfor ~}
