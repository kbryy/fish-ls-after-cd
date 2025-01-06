#  Initialization of global variables
if not set -q LS_AFTER_CD
    set -xg LS_AFTER_CD true
end

if not set -q LS_AFTER_CD_COMMAND
    set -xg LS_AFTER_CD_COMMAND "ls -GF"
end

# ls automatically when changing directories
function on_directory_change --on-variable PWD
    if test "$LS_AFTER_CD" = true; and status --is-interactive
        eval $LS_AFTER_CD_COMMAND
    end
end
