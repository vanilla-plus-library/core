#> vplib:core/__ver/core/uninstall

# Objectives
scoreboard objectives remove vplib.data
scoreboard objectives remove vplib.temp
scoreboard objectives remove vplib.math
scoreboard objectives remove vplib.id

# Clear chunk
execute in minecraft:overworld run function vplib:core/__ver/core/clear_chunk
execute in minecraft:the_nether run function vplib:core/__ver/core/clear_chunk
execute in minecraft:the_end run function vplib:core/__ver/core/clear_chunk

# Clear metadata
data remove storage vplib:data modules.core

# DEBUG Message
tellraw @a[tag=vplib.debug] [{"text":"[Debug]: ","color":"yellow","bold":true},{"text":"Uninstalled Vanilla+ Library: Core __ver","color":"white","bold":false}]