#> vplib:core/__ver/api/uninstall
# Description: Uninstall module.
# From: #vplib:core/api/uninstall

# Run function if lib version matches
execute if score #vplib.core.current load matches 1 run function vplib:core/__ver/core/uninstall