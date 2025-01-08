if not status --is-interactive
    exit
end

#  Initialization of global variables
set -q LS_AFTER_CD || set -gx LS_AFTER_CD true
set -q LS_AFTER_CD_COMMAND || set -gx LS_AFTER_CD_COMMAND "ls -GF"

# ls automatically when changing directories
function on_directory_change --on-variable PWD
    if not string match -q "*;*" $LS_AFTER_CD_COMMAND
        eval $LS_AFTER_CD_COMMAND
    else
        echo "Error: LS_AFTER_CD_COMMAND contains invalid characters."
    end
end
