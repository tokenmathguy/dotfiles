# .zshrc.d/dev.zsh # vim: set ft=zsh:

function cov-ignore() {
    export IGNORE_COVERAGE="#"
}

function cov-show() {
    unset IGNORE_COVERAGE
}

function qox() {
    tox -q -e py38 -- -n 4 -rfE --disable-warnings -s -vv $@
}

function sox() {
    cov-ignore
    echo '❯ IGNORE_COVERAGE="#" tox -e py38 -- -rfE --no-header --disable-warnings --cov-report= -s '"$@"
    tox -q -e py38 -- -rfE --no-header --disable-warnings --cov-report= -s $@
    cov-show
}

function fox() {
    tox -q -e py38 -- -n 4 -rfE --disable-warnings tests
}

function lint() {
    tox -q -e black-format,pylint,flake8,docstyle
}

function pox() {
    echo "❯ tox --parallel 3 -- -rfE --disable-warnings tests"
    tox -q --parallel 3 -- -rfE --disable-warnings tests
}
