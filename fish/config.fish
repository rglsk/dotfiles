set -x VIRTUALFISH_HOME ~/virtualenvs
set -x LSCOLORS gxfxcxdxbxegedabagacad

alias c "clear"

#my virtualennv wrapper

function workon
    if not set -q argv[1]
        vf ls
    else
        vf activate $argv[1]
    end
    vf cd
end

complete -x -c workon -a "(vf ls)"

function deactivate
	vf deactivate
	cd
end

function mkvirtualenv
    # Check if the first argument is an option to virtualenv
    # if it is then the the last argument must be the DEST_DIR.
    set -l idx 1
    switch $argv[1]
        case '-*'
            set idx -1
    end

    # Extract the DEST_DIR and remove it from $argv
    set -l env_name $argv[$idx]
    set -e argv[$idx]

    vf new $argv $env_name
end

function cdvirtualenv
    vf cd $argv
end
 
# docker aliases

alias stop_dockers "docker stop (docker ps -a -q)"
alias rm_dockers "docker rm (docker ps -a -q)"
alias rmi_dockers "docker rmi (docker images -q)"

eval (/usr/local/bin/python -m virtualfish)