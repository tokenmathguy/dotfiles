# .zshrc.d/aws.zsh # vim: set ft=zsh:

function set-assume-role() {
    local response="$(</dev/stdin)"
    export AWS_ACCESS_KEY_ID=$(echo "${response}" | jq -r .Credentials.AccessKeyId)
    export AWS_SECRET_ACCESS_KEY=$(echo "${response}" | jq -r .Credentials.SecretAccessKey)
    export AWS_SESSION_TOKEN=$(echo "${response}" | jq -r .Credentials.SessionToken)
}

function unset-assume-role() {
    unset AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY AWS_SESSION_TOKEN
}
