#> vplib:core/__ver/player/id/register

# Register player ID
execute store result score @s vplib.id run scoreboard players add $global_id vplib.data 1
tellraw @a[tag=vplib.debug] [{"text":"[DEBUG]: ","color":"yellow","bold":true},{"text":"Registered ID: ","color":"white","bold":false},{"score":{"name":"@s","objective":"vplib.id"},"color":"white","bold":false},{"text":".","color":"white","bold":false}]

# Generate bits
scoreboard players operation #id vplib.temp = @s vplib.id

## Negative/Positive bit
execute unless score #id vplib.temp matches ..-1 run tag @s add vplib.id.bit31
execute if score #id vplib.temp matches ..-1 run scoreboard players operation #id vplib.temp *= #-1 vplib.math

## Loop
scoreboard players set #index vplib.temp 0
execute unless score #id vplib.temp matches 0 run function vplib:core/__ver/player/id/bits_loop


# Tag player
tag @s add vplib.id.registered
