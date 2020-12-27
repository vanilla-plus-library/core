#> vplib:core/__ver/load/enumerate
# DEBUG
tellraw @a[tag=vplib.debug+] [{"text":"[Debug]: ","color":"yellow","bold":true},{"text":"Enumerated Vanilla+ Library: Core __ver","color":"white","bold":false}]

# Set current version
execute unless score #vplib.core.current vplib.load matches 2.. run scoreboard players set #vplib.core.current vplib.load 2

# Set breaking version
execute unless score #vplib.core.breaking vplib.load matches 2.. run scoreboard players set #vplib.core.breaking vplib.load 2