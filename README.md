# About:

This playbook aims to automate linux debian vm or machine provisioning with changing a few vars and one simple click to run.

## REQUIREMENTS:

1. Set the IP of the machine and password + ssh user in the VARS located vars.yml - otherwise the ansible playbook will not work.

Mandatory [VARS](https://github.com/jtmb/JBE-Ansible/blob/main/vars/vars.yml):

      homedir: "/home/{{ssh_user}}"           # Sets home dir to your SSH user, don;t change this unless you know what you are doing.
      ssh_user: "ansible"                     # SSH user name
      ssh_pass: "ansible_password"            # SSH pass you use to connect 
      sudo_pass: "{{ssh_pass}}"               # Define sudo pass (if same as ssh pass, you can always a variable example:  ssh_pass: {{ssh_pass}})
      target_server_ip: "192.168.206.38"      # Address of server you want to target (provision) with the playbook
      deploy_containers: true                #leave true to deploy container workload, flase to skip container workload.


-------------------------------

### Running Ansible code:

1. run runner.sh (run auto)

-------------------------------


*Playbook task highlights:*

1. [Application Packages](https://github.com/jtmb/JBE-Ansible/blob/main/tasks/packages.yml)

2. [Install and configure Fail2ban, endlessSSH.]( https://github.com/jtmb/JBE-Ansible/blob/main/tasks/docker.yml )

3. [Docker app and official signed Key]( https://github.com/jtmb/JBE-Ansible/blob/main/tasks/docker.yml )

4. [Change the default SSH port and restric connection to ssh key only.]( https://github.com/jtmb/JBE-Ansible/blob/main/tasks/ssh_security.yml )

5. [Deploy docker container enviorment.]( https://github.com/jtmb/JBE-Ansible/blob/main/tasks/docker.yml )

-------------------------------
