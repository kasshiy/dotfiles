function fhist -d "Edit History by Fuzzy Finder"
    set hs ( history| uniq -u | fzf -0 -m --reverse --preview 'history search -t -50 {}') \
    && history delete -z $hs
end

function fcda -d "Change directory include . file by fzf"
    set r \
     (find . -type d| grep -v '/\.git' |fzf --prompt "Dir:" --info=inline --reverse --preview 'tree {}|head -50') \
    && cd $r
end
