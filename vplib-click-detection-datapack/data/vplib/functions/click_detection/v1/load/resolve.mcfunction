#> vplib:click_detection/v1/load/resolve
# DEBUG
execute unless score #vplib.core.current vplib.load matches 1 run tellraw @a[tag=vplib.debug+] [{"text":"[Debug]: ","color":"yellow","bold":true},{"text":"Failed to resolve Vanilla+ Library: Click Detection v1","color":"white","bold":false}]

# Load if lib version matches
execute if score #vplib.core.current vplib.load matches 1 run function vplib:click_detection/v1/load/load