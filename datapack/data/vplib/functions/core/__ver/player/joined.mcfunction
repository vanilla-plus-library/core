#> vplib:core/__ver/player/joined
# Description: Runs when a player joins in the server.
# Context:
#   - As the player;
#   - At the player;
#   - Rotated as the player;
#   - Anchored feet;

# Reset triggers
scoreboard players reset @s vplib.joined


# Unregistered player
execute unless entity @s[tag=vplib.id.registered] run function vplib:core/__ver/player/id/register


# Get ID
function vplib:core/__ver/player/id/get_int
scoreboard players operation @s vplib.id = #id vplib.temp


# Store UUID
execute unless score @s vplib.uuid0 matches -2147483648.. store result score @s vplib.uuid0 run data get entity @s UUID[0]
execute unless score @s vplib.uuid1 matches -2147483648.. store result score @s vplib.uuid1 run data get entity @s UUID[1]
execute unless score @s vplib.uuid2 matches -2147483648.. store result score @s vplib.uuid2 run data get entity @s UUID[2]
execute unless score @s vplib.uuid3 matches -2147483648.. store result score @s vplib.uuid3 run data get entity @s UUID[3]


# Call function tag
function #vplib:core/api/player/joined


# Message
tellraw @a[tag=vplib.debug] [{"text":"[DEBUG]: ","color":"yellow","bold":true},{"text":"Player joined.","color":"white","bold":false}]