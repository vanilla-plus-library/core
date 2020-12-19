#> vplib:core/__ver/load/enumerate
# DEBUG
tellraw @a[tag=vplib.debug+] [{"text":"[Debug]: ","color":"yellow","bold":true},{"text":"Enumerated Vanilla+ Library: Core __ver","color":"white","bold":false}]

# Set current version
execute unless score #vplib.core.current load matches 2.. run scoreboard players set #vplib.core.current load 2

# Set breaking version
execute unless score #vplib.core.breaking load matches 2.. run scoreboard players set #vplib.core.breaking load 2