execute if entity @s[tag=!mrcd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=straight] run function thewii:vp_library/raycasting/mrcd/types/stair/bottom/west/straight
execute if entity @s[tag=!mrcd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=inner_left] run function thewii:vp_library/raycasting/mrcd/types/stair/bottom/south/inner_right
execute if entity @s[tag=!mrcd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=inner_right] run function thewii:vp_library/raycasting/mrcd/types/stair/bottom/north/inner_left
execute if entity @s[tag=!mrcd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=outer_left] run function thewii:vp_library/raycasting/mrcd/types/stair/bottom/south/outer_right
execute if entity @s[tag=!mrcd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=outer_right] run function thewii:vp_library/raycasting/mrcd/types/stair/bottom/north/outer_left