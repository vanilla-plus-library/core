#> vplib:core/__ver/player/id/bits_loop


# Get remainder
scoreboard players operation #remainder vplib.temp = #id vplib.temp
scoreboard players operation #remainder vplib.temp %= #2 vplib.math

## DEBUG
#tellraw @a[tag=vplib.debug+] [{"text":"[DEBUG]: ","color":"yellow","bold":true},{"score":{"name":"#id","objective":"vplib.temp"},"color":"white","bold":false},{"text":" % 2 = ","color":"white","bold":false},]

execute if score #remainder vplib.temp matches 0 run tellraw @a[tag=vplib.debug+] [{"text":"[DEBUG]: ","color":"yellow","bold":true},{"text":"Index: ","color":"white","bold":false},{"score":{"name":"#index","objective":"vplib.temp"},"color":"white","bold":false},{"text":" | Quotient: ","color":"white","bold":false},{"score":{"name":"#id","objective":"vplib.temp"},"color":"white","bold":false},{"text":" | Remainder: ","color":"white","bold":false},{"score":{"name":"#remainder","objective":"vplib.temp"},"color":"white","bold":false},{"text":" | Bit: 0","color":"white","bold":false}]
execute unless score #remainder vplib.temp matches 0 run tellraw @a[tag=vplib.debug+] [{"text":"[DEBUG]: ","color":"yellow","bold":true},{"text":"Index: ","color":"white","bold":false},{"score":{"name":"#index","objective":"vplib.temp"},"color":"white","bold":false},{"text":" | Quotient: ","color":"white","bold":false},{"score":{"name":"#id","objective":"vplib.temp"},"color":"white","bold":false},{"text":" | Remainder: ","color":"white","bold":false},{"score":{"name":"#remainder","objective":"vplib.temp"},"color":"white","bold":false},{"text":" | Bit: 1","color":"white","bold":false}]


# Set tag
execute unless score #remainder vplib.temp matches 0 run function vplib:core/__ver/player/id/bits_tag

# Loop
scoreboard players add #index vplib.temp 1
scoreboard players operation #id vplib.temp /= #2 vplib.math
execute unless score #id vplib.temp matches 0 run function vplib:core/__ver/player/id/bits_loop