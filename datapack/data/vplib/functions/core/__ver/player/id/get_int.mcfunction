#> vplib:core/__ver/player/id/get_int

# Reset
scoreboard players set #id vplib.temp 0

# Binary digits
execute if entity @s[tag=vplib.id.bit0] run scoreboard players add #id vplib.temp 1
execute if entity @s[tag=vplib.id.bit1] run scoreboard players add #id vplib.temp 2
execute if entity @s[tag=vplib.id.bit2] run scoreboard players add #id vplib.temp 4
execute if entity @s[tag=vplib.id.bit3] run scoreboard players add #id vplib.temp 8
execute if entity @s[tag=vplib.id.bit4] run scoreboard players add #id vplib.temp 16
execute if entity @s[tag=vplib.id.bit5] run scoreboard players add #id vplib.temp 32
execute if entity @s[tag=vplib.id.bit6] run scoreboard players add #id vplib.temp 64
execute if entity @s[tag=vplib.id.bit7] run scoreboard players add #id vplib.temp 128
execute if entity @s[tag=vplib.id.bit8] run scoreboard players add #id vplib.temp 256
execute if entity @s[tag=vplib.id.bit9] run scoreboard players add #id vplib.temp 512
execute if entity @s[tag=vplib.id.bit10] run scoreboard players add #id vplib.temp 1024
execute if entity @s[tag=vplib.id.bit11] run scoreboard players add #id vplib.temp 2048
execute if entity @s[tag=vplib.id.bit12] run scoreboard players add #id vplib.temp 4096
execute if entity @s[tag=vplib.id.bit13] run scoreboard players add #id vplib.temp 8192
execute if entity @s[tag=vplib.id.bit14] run scoreboard players add #id vplib.temp 16384
execute if entity @s[tag=vplib.id.bit15] run scoreboard players add #id vplib.temp 32768
execute if entity @s[tag=vplib.id.bit16] run scoreboard players add #id vplib.temp 65536
execute if entity @s[tag=vplib.id.bit17] run scoreboard players add #id vplib.temp 131072
execute if entity @s[tag=vplib.id.bit18] run scoreboard players add #id vplib.temp 262144
execute if entity @s[tag=vplib.id.bit19] run scoreboard players add #id vplib.temp 524288
execute if entity @s[tag=vplib.id.bit20] run scoreboard players add #id vplib.temp 1048576
execute if entity @s[tag=vplib.id.bit21] run scoreboard players add #id vplib.temp 2097152
execute if entity @s[tag=vplib.id.bit22] run scoreboard players add #id vplib.temp 4194304
execute if entity @s[tag=vplib.id.bit23] run scoreboard players add #id vplib.temp 8388608
execute if entity @s[tag=vplib.id.bit24] run scoreboard players add #id vplib.temp 16777216
execute if entity @s[tag=vplib.id.bit25] run scoreboard players add #id vplib.temp 33554432
execute if entity @s[tag=vplib.id.bit26] run scoreboard players add #id vplib.temp 67108864
execute if entity @s[tag=vplib.id.bit27] run scoreboard players add #id vplib.temp 134217728
execute if entity @s[tag=vplib.id.bit28] run scoreboard players add #id vplib.temp 268435456
execute if entity @s[tag=vplib.id.bit29] run scoreboard players add #id vplib.temp 536870912
execute if entity @s[tag=vplib.id.bit30] run scoreboard players add #id vplib.temp 1073741824

# Negative
execute unless entity @s[tag=vplib.id.bit31] run scoreboard players operation #id vplib.temp *= #-1 vplib.math