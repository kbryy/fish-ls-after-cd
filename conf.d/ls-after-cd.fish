#  Initialization of global variables
if not set -q LS_AFTER_CD
    set -xg LS_AFTER_CD true
end

# ls automatically when changing directories
function on_directory_change --on-variable PWD
    if test "$LS_AFTER_CD" = true; and status --is-interactive
        ls -GF
    end
end
