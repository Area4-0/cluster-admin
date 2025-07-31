- Build: `docker build . -t gciattounibo/area40-cluster-admin`
- Create local file named `.password` with the password for `USER` on Area4.0 machines
- Assumption is that the local user has a private key in `$HOME/.ssh/id_rsa`
- Run: `docker run --rm -it -e USER=gciatto -v $(pwd)/.password:/secrets/password:ro -v $HOME/.ssh/id_rsa:/root/.ssh/id_rsa:ro gciattounibo/area40-cluster-admin`

# How to
### Launch an ansible command 
You can launch an arbitrary Ansible command using the shell function `ansible_shell`, which takes two parameters:
1. the Ansible target (by default is 'all'). You can check the available targets in `area40.ini` file
2. the shell command to be executed

```bash
ansible_shell stairwai 'docker volume ls'
```

