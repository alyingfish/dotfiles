function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s %s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
end

starship init fish | source
if test -f ~/.local/state/quickshell/user/generated/terminal/sequences.txt
    cat ~/.local/state/quickshell/user/generated/terminal/sequences.txt
end

# List Directory
alias l='eza -lh  --icons=auto' # long list
alias ls='eza --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias lt='eza --icons=auto --tree' # list folder as tree
# alias clear "printf '\033[2J\033[3J\033[1;1H'"

# Handy change dir shortcuts
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'

# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
abbr mkdir 'mkdir -p'

abbr nv nvim
abbr cz chezmoi
set -gx ABBR_TIPS_ALIAS_WHITELIST nv

# set default editor
set -gx EDITOR nvim
set -gx MANPAGER 'nvim +Man!'

# smarter cd command, see <https://github.com/ajeetdsouza/zoxide>
zoxide init --cmd cd fish | source # start zoxide and replace `cd`

# fzf-fish
# ctrl+O 用EDITOR打开文件，ctrl-d显示目录, ctrl-h显示隐藏，ctrl-f恢复
set fzf_directory_opts "--bind=ctrl-o:execute($EDITOR {} &> /dev/tty),ctrl-d:reload(fd --color=always --type directory),ctrl-h:reload(fd --color=always --hidden),ctrl-f:reload(fd --color=always)"
set fzf_preview_dir_cmd eza -lha --icons=auto --sort=name --group-directories-first --color=always
