- Build: `docker build . -t gciattounibo/area40-cluster-admin`
- Create local file named `.password` with the password for `USER` on Area4.0 machines
- Assumption is that the local user has a private key in `$HOME/.ssh/id_rsa`
- \[Optional\] Create a local file named `.zsh_history` to keep the history of the shell commands executed in the container
    ```bash
    touch .zsh_history
    ```
- Run:
    ```bash
    docker run --rm -it \
        -e USER=yourusername \
        -v $(pwd)/.password:/secrets/password:ro \
        -v $HOME/.ssh/id_rsa:/root/.ssh/id_rsa:ro \
        -v $(pwd)/.zsh_history:/root/.zsh_history:rw \
        gciattounibo/area40-cluster-admin
    ```

# How to
### Launch an Ansible command 
You can launch an arbitrary Ansible command using the shell function `ansible_shell`, which takes two parameters:
1. the Ansible target (by default is 'all'). You can check the available targets in `area40.ini` file
2. the shell command to be executed

```bash
ansible_shell all 'echo hello from `hostname`'
```

