# SHAPED (8 slots)

# Register
execute unless score #vanilla.leather_chestplate vplib.recipe matches 1.. store result score #vanilla.leather_chestplate vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:leather"},{Slot:4b,id:"minecraft:leather"},{Slot:11b,id:"minecraft:leather"},{Slot:12b,id:"minecraft:leather"},{Slot:13b,id:"minecraft:leather"},{Slot:20b,id:"minecraft:leather"},{Slot:21b,id:"minecraft:leather"},{Slot:22b,id:"minecraft:leather"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.leather_chestplate vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.leather_chestplate vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:leather_chestplate",Count:1b,tag:{Damage:0}}