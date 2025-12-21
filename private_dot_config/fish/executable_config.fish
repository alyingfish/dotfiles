if status is-interactive
    # ---------------------------------
    # 1. SETTINGS & ENVIRONMENT
    # ---------------------------------

    # Remove the default login greeting
    set -g fish_greeting

    # Set default editor (change to code/vim/nano if preferred)
    set -gx EDITOR nvim

    # Enable Vi mode (Optional: remove if you prefer standard emacs bindings)
    # fish_vi_key_bindings

    # ---------------------------------
    # 2. NAVIGATION & PATHS
    # ---------------------------------

    # Initialize Starship prompt
    starship init fish | source

    # Initialize Zoxide (smarter cd)
    zoxide init --cmd cd fish | source # start zoxide and replace `cd`

    # Add common user paths (if they exist)
    fish_add_path $HOME/.local/bin
    # fish_add_path $HOME/.cargo/bin
    # fish_add_path $HOME/go/bin

    # ---------------------------------
    # 3. ABBREVIATIONS (Better aliases)
    # ---------------------------------

    # Navigation
    abbr --add .. 'cd ..'
    abbr --add ... 'cd ../..'
    abbr --add .3 'cd ../../..'
    abbr --add .4 'cd ../../..'
    abbr --add .5 'cd ../../..'
    abbr --add .6 'cd ../../..'

    # List (using eza if installed, otherwise ls)
    if type -q eza
        alias ls='eza --icons --group-directories-first'
        alias ll='eza --icons --group-directories-first -l'
        alias la='eza --icons --group-directories-first -la'
        alias lt='eza --icons --group-directories-first --tree --level=2'
    else
        abbr --add ll 'ls -lh'
        abbr --add la 'ls -lah'
    end

    # Cat -> Bat (syntax highlighting)
    if type -q bat
        abbr --add cat bat
    end

    # Git (Common workflows)
    abbr --add g git
    abbr --add gs 'git status'
    abbr --add ga 'git add .'
    abbr --add gc 'git commit -m'
    abbr --add gp 'git push'
    abbr --add gl 'git pull'
    abbr --add gd 'git diff'
    abbr --add glog 'git log --oneline --graph --decorate'

    # Package Management (Arch Linux specific - adjust if on Debian/Fedora)
    abbr --add upd 'paru -Syu' # Update everything
    abbr --add ins 'paru -S' # Install package
    abbr --add rmv 'paru -Rns' # Remove package + dependencies

    # Editor
    abbr --add v '$EDITOR'
    abbr --add sv 'sudo $EDITOR'
    abbr --add conf 'cd ~/.config'

    # chezmoi
    abbr --add cz chezmoi

    # set default editor
    set -gx MANPAGER 'nvim +Man!'

    # Always mkdir a path (this doesn't inhibit functionality to make a single dir)
    abbr --add mkdir 'mkdir -p'

    # ---------------------------------
    # 4. FUNCTIONS & UTILITIES
    # ---------------------------------

    # Create a directory and enter it immediately
    function mkcd
        mkdir -p $argv[1]; and cd $argv[1]
    end

    # Quick FZF search to open files in editor
    # Press Ctrl+f to search files and open in EDITOR
    # bind \cf 'set f (fzf); if test -n "$f"; $EDITOR $f; end; commandline -f repaint'

    # yazi -- <https://yazi-rs.github.io/docs/quick-start#shell-wrapper>
    function y
        set tmp (mktemp -t "yazi-cwd.XXXXXX")
        yazi $argv --cwd-file="$tmp"
        if read -z cwd <"$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
            builtin cd -- "$cwd"
        end
        rm -f -- "$tmp"
    end
end

# fzf-fish
# ctrl+r Search history
# ctrl+v Search variables
# ctrl+alt+f Search directory
# ctrl+alt+p Search processes
# ctrl+alt+l Search git log
# ctrl+alt+s Search git status
# ctrl+O 用EDITOR打开文件，ctrl-d显示目录，ctrl-h显示隐藏, ctrl-f恢复正常显示
set fzf_directory_opts "--bind=ctrl-o:execute($EDITOR {} &> /dev/tty),ctrl-d:reload(fd --color=always --type directory),ctrl-h:reload(fd --color=always --hidden),ctrl-f:reload(fd --color=always)"
set fzf_preview_dir_cmd eza --icons --group-directories-first --color=always --all
