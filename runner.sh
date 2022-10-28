export COLUMNS=80
date=$(date)

# Uses Ansible Mitogen
ANSIBLE_CONFIG=./ansible.cfg \
 sudo ansible-playbook -i inventory.ini main.yml --ask-vault-pass # >./logs/"$date".log