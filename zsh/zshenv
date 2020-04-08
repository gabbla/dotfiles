
# zsh-atuosuggestions keybindings

bindkey '^ ' autosuggest-accept

## Aliases {{{
alias dot="cd ~/.dotfiles && ll"
alias opt="cd /opt"
alias prj="cd ~/projects"
alias mk5="cd ~/projects/tmd_mk5"
alias mk0="cd ~/projects/tmd_mk0"
alias wrk="cd ~/workspaces"
mdd() { mkdir -p $1 && cd $1 }
MDD() { TEMP=$(mktemp -d); cd $TEMP }
now() { date +'%Y%m%d_%H_%M' }


alias nettest='ping 8.8.8.8'
alias fn='find . -name'
alias fd='find . -type d -name'

alias gerp='grep'

## }}}
################################################################################
# fastboot Aliases
################################################################################

alias fastreboot='sudo fastboot reboot'
alias fastspl='sudo fastboot flash spl'
alias fastuboot='sudo fastboot flash uboot'
alias fastdtb='sudo fastboot flash spl-os'
alias fastkernel='sudo fastboot flash kernel'
alias fastfs='sudo fastboot flash filesystem'

################################################################################
# Docker sutff
################################################################################
alias dlsi='sudo docker images'
alias dlsc='sudo docker container ls'
alias drmif='sudo docker image rm -f'
################################################################################
# SVN Aliases
################################################################################
alias ssts='svn status'
alias sin='svn info'

export TERM=xterm-256color

export EDITOR="nvim"

prompt_svn() {
    local rev branch
    if in_svn; then
        rev=$(svn_get_rev_nr)
        branch=$(svn_get_branch_name)
        echo -n " "
        if [ `svn_dirty_choose_pwd 1 0` -eq 1 ]; then
            #prompt_segment yellow black
            echo -n "$rev@$branch"
            echo -n "±"
        else
            #prompt_segment green black
            echo -n "$rev@$branch"
        fi
    fi
}

# Reboot in window. See https://unix.stackexchange.com/questions/43196/how-can-i-tell-grub-i-want-to-reboot-into-windows-before-i-reboot
win_reboot() {
    WINDOWS_TITLE=`sudo grep -i 'windows' /boot/grub/grub.cfg|cut -d"'" -f2`
    sudo grub-reboot "$WINDOWS_TITLE"
    sudo reboot
}

# bat theme
export BAT_THEME="Monokai Extended Bright"

# diff decorator using bat
alias decor='bat --language patch --plain'


[ -f ~/cntlm_proxy ] && source ~/cntlm_proxy
