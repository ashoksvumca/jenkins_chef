call knife ssl fetch
call knife ssl check
call knife node run_list add demo_node 'recipe[software_install::dir_creation],recipe[software_install::files_creation]'
call knife ssh 18.223.136.10 'sudo chef-client' --manual-list --ssh-user ec2-user --ssh-password 'devops@123'