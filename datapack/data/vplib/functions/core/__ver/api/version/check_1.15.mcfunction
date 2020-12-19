#> vplib:core/__ver/api/version/check_1.15
# Description: Check if server is 1.15+
# From: #vplib:core/api/version/check_1.15
# Output: load #1.15 (1 = True / 0 = False)

# Run function if lib version matches
execute if score #vplib.core.current load matches 1 run function vplib:core/__ver/version/check_1.15