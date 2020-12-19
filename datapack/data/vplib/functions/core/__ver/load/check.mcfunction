#> vplib:core/__ver/load/check

# Dependencies
scoreboard players set #load load 1

## 1.15
scoreboard players set #1.15 load 0
function vplib:core/__ver/version/check_1.15
execute if score #1.15 load matches 0 run scoreboard players set #load load 0


# Success
execute if score #load load matches 1 run function vplib:core/__ver/load/load

# Failed

## Messages
execute if score #load load matches 0 run tellraw @a [{"text":"[Debug]: ","color":"red","bold":true},{"text":"Vanilla+ Library: Core failed to load. It requires Minecraft 1.15+.","color":"white","bold":false}]

## Reset loaded version
execute unless score #load load matches 1 run scoreboard players reset #vplib.core.current load
execute unless score #load load matches 1 run scoreboard players reset #vplib.core.breaking load
execute unless score #load load matches 1 run data remove storage vplib:data modules.core.version