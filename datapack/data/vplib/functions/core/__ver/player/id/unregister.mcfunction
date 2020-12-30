#> vplib:core/__ver/player/id/unregister

# Remove bits
tag @s remove vplib.id.bit0
tag @s remove vplib.id.bit1
tag @s remove vplib.id.bit2
tag @s remove vplib.id.bit3
tag @s remove vplib.id.bit4
tag @s remove vplib.id.bit5
tag @s remove vplib.id.bit6
tag @s remove vplib.id.bit7
tag @s remove vplib.id.bit8
tag @s remove vplib.id.bit9
tag @s remove vplib.id.bit10
tag @s remove vplib.id.bit11
tag @s remove vplib.id.bit12
tag @s remove vplib.id.bit13
tag @s remove vplib.id.bit14
tag @s remove vplib.id.bit15
tag @s remove vplib.id.bit16
tag @s remove vplib.id.bit17
tag @s remove vplib.id.bit18
tag @s remove vplib.id.bit19
tag @s remove vplib.id.bit20
tag @s remove vplib.id.bit21
tag @s remove vplib.id.bit22
tag @s remove vplib.id.bit23
tag @s remove vplib.id.bit24
tag @s remove vplib.id.bit25
tag @s remove vplib.id.bit26
tag @s remove vplib.id.bit27
tag @s remove vplib.id.bit28
tag @s remove vplib.id.bit29
tag @s remove vplib.id.bit30
tag @s remove vplib.id.bit31

# Remove registered tag
tag @s remove vplib.id.registered

# Reset ID score
scoreboard players reset @s vplib.id

# Register again
advancement revoke @s only vplib:core/__ver/player/joined