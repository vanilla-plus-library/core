#> vplib:math/v1/api/lcg/reset_seed
# Description: Reset LCG seed.
# From: #vplib:math/api/lcg/ranged

# Run function if lib version matches
execute if score #vplib.math.current vplib.load matches 1 run function vplib:math/v1/lcg/reset_seed