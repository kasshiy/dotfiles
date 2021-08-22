function fterm -d "Git terminal by fzf"
  bash -c '
  declare -A animals
  animals=(
  ["add"]="fgadd"
  )
  (for key in ${!animals[@]}; do
      echo "$key,${animals[$key]}"
  done)|fzf|awk -F "," \'{print $2}\'
  '
end

function fgadd -d "Git Add Files selected by fzf"
  set br (git branch | awk '$1 ~/^*/ {print $2}')\
  && set cm (git status -s | wc -l)\
  && set fs (git status -s | fzf --ansi -0 -m --reverse --height=80% --preview-window 70%\
          --header "Branch: $br,UnCommited: $cm"\
          --preview 'git diff --color -w (awk \'{print $2}\' {f})'\
          --bind 'ctrl-a:select-all'| awk '{print $2}')\
  && git add $fs 2>/dev/null
end

function fgwork -d "Git worktree ls by fzf"
  set wl (git worktree list |rev|awk '{print $1}'|cut -b 2-|rev|cut -b 2-|\
  fzf --no-sort --ansi -0 --height=50% --preview-window 70%\
        --preview 'git --git-dir (git worktree list |fzf --filter [{}]\$|awk \'{print $1}\')/.git log --color --graph --oneline')\
  && set dir (git worktree list |fzf --filter "[$wl]\$"|awk '{print $1}')\
  && cd $dir
end
