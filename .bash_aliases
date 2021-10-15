
#:'######:::'#######::'########::'########:
#'##... ##:'##.... ##: ##.... ##: ##.....::
# ##:::..:: ##:::: ##: ##:::: ##: ##:::::::
# ##::::::: ##:::: ##: ########:: ######:::
# ##::::::: ##:::: ##: ##.. ##::: ##...::::
# ##::: ##: ##:::: ##: ##::. ##:: ##:::::::
#. ######::. #######:: ##:::. ##: ########:
#:......::::.......:::..:::::..::........::

#
# Core commands
#

alias myshell='echo $SHELL'

alias aliasconfig='code ~/.bash_aliases'
alias bashconfig='code ~/.bashrc'

alias zshconfig="code ~/.zshrc"

source ~/.holo/src/Ubuntu/core.cfg


#'########::::'###:::::'######::'##:::'##:
# ##.....::::'## ##:::'##... ##:. ##:'##::
# ##::::::::'##:. ##:: ##:::..:::. ####:::
# ######:::'##:::. ##:. ######::::. ##::::
# ##...:::: #########::..... ##:::: ##::::
# ##::::::: ##.... ##:'##::: ##:::: ##::::
# ########: ##:::: ##:. ######::::: ##::::
#........::..:::::..:::......::::::..:::::

#
# Easy commands
#

alias h='cd ~;'

alias ..='cd ../;'
alias ...='cd ../../;'
alias ....='cd ../../../;'
alias .....='cd ../../../../;'


#:::'###::::'########::'########:'####::'######:::::'###::::'##::: ##:
#::'## ##::: ##.... ##:... ##..::. ##::'##... ##:::'## ##::: ###:: ##:
#:'##:. ##:: ##:::: ##:::: ##::::: ##:: ##:::..:::'##:. ##:: ####: ##:
#'##:::. ##: ########::::: ##::::: ##::. ######::'##:::. ##: ## ## ##:
# #########: ##.. ##:::::: ##::::: ##:::..... ##: #########: ##. ####:
# ##.... ##: ##::. ##::::: ##::::: ##::'##::: ##: ##.... ##: ##:. ###:
# ##:::: ##: ##:::. ##:::: ##::::'####:. ######:: ##:::: ##: ##::. ##:
#..:::::..::..:::::..:::::..:::::....:::......:::..:::::..::..::::..::

#
# Artisan commands
#

function homestead() {
    ( cd ~/Homestead && vagrant $* )
}

alias artisan='php artisan'
alias art='artisan'
alias migrate='artisan migrate;'


#'########:'########::'######::'########::'######::
#... ##..:: ##.....::'##... ##:... ##..::'##... ##:
#::: ##:::: ##::::::: ##:::..::::: ##:::: ##:::..::
#::: ##:::: ######:::. ######::::: ##::::. ######::
#::: ##:::: ##...:::::..... ##:::: ##:::::..... ##:
#::: ##:::: ##:::::::'##::: ##:::: ##::::'##::: ##:
#::: ##:::: ########:. ######::::: ##::::. ######::
#:::..:::::........:::......::::::..::::::......:::

#
# Tests commands
#

alias phpunit='./vendor/bin/phpunit;'
alias unit='phpunit'


#'########:::'#######:::'######::'##:::'##:'########:'########::
# ##.... ##:'##.... ##:'##... ##: ##::'##:: ##.....:: ##.... ##:
# ##:::: ##: ##:::: ##: ##:::..:: ##:'##::: ##::::::: ##:::: ##:
# ##:::: ##: ##:::: ##: ##::::::: #####:::: ######::: ########::
# ##:::: ##: ##:::: ##: ##::::::: ##. ##::: ##...:::: ##.. ##:::
# ##:::: ##: ##:::: ##: ##::: ##: ##:. ##:: ##::::::: ##::. ##::
# ########::. #######::. ######:: ##::. ##: ########: ##:::. ##:
#........::::.......::::......:::..::::..::........::..:::::..::

#
# Docker commands
#

alias dc='docker-compose'
alias dup='dc up -d'
alias ddown='dc down'
alias dd='ddown'

alias docker:list='docker ps --format "table {{.ID}}\t{{.Names}}\t{{.Image}}\t{{.RunningFor}}\t{{.Status}}";'
alias docker:ps='docker:list'
alias dps='docker:list'

alias docker:restart='docker restart $(docker ps --format "{{.Names}}");'
alias docker:stop='docker stop $(docker ps --format "{{.Names}}");'
alias docker:start='docker start $(docker ps -a -q);'


#'##::::::::'#######:::'######::::'######::
# ##:::::::'##.... ##:'##... ##::'##... ##:
# ##::::::: ##:::: ##: ##:::..::: ##:::..::
# ##::::::: ##:::: ##: ##::'####:. ######::
# ##::::::: ##:::: ##: ##::: ##:::..... ##:
# ##::::::: ##:::: ##: ##::: ##::'##::: ##:
# ########:. #######::. ######:::. ######::
#........:::.......::::......:::::......:::

#
# Logs commands
#

alias log='tail -f *.log'


#'##::: ##::'######:::'####:'##::: ##:'##::::'##:
# ###:: ##:'##... ##::. ##:: ###:: ##:. ##::'##::
# ####: ##: ##:::..:::: ##:: ####: ##::. ##'##:::
# ## ## ##: ##::'####:: ##:: ## ## ##:::. ###::::
# ##. ####: ##::: ##::: ##:: ##. ####::: ## ##:::
# ##:. ###: ##::: ##::: ##:: ##:. ###:: ##:. ##::
# ##::. ##:. ######:::'####: ##::. ##: ##:::. ##:
#..::::..:::......::::....::..::::..::..:::::..::

#
# Nginx commands
#

alias nginx:restart='docker exec nginx nginx -s reload;'


#'########:'########:'####'##::::'##:::'###:::'########'########:
# ##.... ##:##.... ##. ##::##:::: ##::'## ##::... ##..::##.....::
# ##:::: ##:##:::: ##: ##::##:::: ##:'##:. ##:::: ##::::##:::::::
# ########::########:: ##::##:::: ##'##:::. ##::: ##::::######:::
# ##.....:::##.. ##::: ##:. ##:: ##::#########::: ##::::##...::::
# ##::::::::##::. ##:: ##::. ## ##:::##.... ##::: ##::::##:::::::
# ##::::::::##:::. ##'####::. ###::::##:::: ##::: ##::::########:
#..::::::::..:::::..:....::::...::::..:::::..::::..::::........::

#
# Private Commands
#

if [ -f ~/.bash_private_aliases ]; then
    source ~/.bash_private_aliases
fi

























#'########::'#######::'##::: ##:'########::::'########::'##:::'##:
# ##.....::'##.... ##: ###:: ##:... ##..::::: ##.... ##:. ##:'##::
# ##::::::: ##:::: ##: ####: ##:::: ##::::::: ##:::: ##::. ####:::
# ######::: ##:::: ##: ## ## ##:::: ##::::::: ########::::. ##::::
# ##...:::: ##:::: ##: ##. ####:::: ##::::::: ##.... ##:::: ##::::
# ##::::::: ##:::: ##: ##:. ###:::: ##::::::: ##:::: ##:::: ##::::
# ##:::::::. #######:: ##::. ##:::: ##::::::: ########::::: ##::::
#..:::::::::.......:::..::::..:::::..::::::::........::::::..:::::

#
# Generate Fonts By
#
#
# https://onlineasciitools.com/convert-text-to-ascii-art
#
# Font Name: banner3-D
#
#
