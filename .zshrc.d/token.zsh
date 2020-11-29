# .zshrc.d/token.zsh # vim: set ft=zsh:

function token() {
    if ! klist -s; then
        kinit -f
    fi
    local key_file="$HOME/.ssh/id_rsa-cert.pub"

    if [ -f "${key_file}" ]; then
        local cert=$(ssh-keygen -Lf "${key_file}" | awk 'NR==7{print $5}')
        local date_now=$(date +"%Y-%m-%dT%T")

        if [[ "${date_now}" > "${cert}" ]] ;
        then
              echo "zshrc: your token has expired..."
              token -o
        fi
    else
        echo "zshrc: your token cannot be found..."
        token -o
    fi
}
