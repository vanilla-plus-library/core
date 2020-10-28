#> vplib:custom_crafting/v1/block/table/gui/slot_holders
# DEBUG tellraw @p {"score":{"name":"#slot_holders","objective":"vplib.temp"}}

# Check buttons
function vplib:custom_crafting/v1/block/table/gui/buttons/main


# Move container to temp array
data modify storage vplib:temp array set from storage vplib:temp container

# Remove slot holders
data remove storage vplib:temp array[{tag:{vplib:{slot_holder:1b,type:1b}}}]

# Remove grid
data remove storage vplib:temp array[{Slot:2b}]
data remove storage vplib:temp array[{Slot:3b}]
data remove storage vplib:temp array[{Slot:4b}]
data remove storage vplib:temp array[{Slot:11b}]
data remove storage vplib:temp array[{Slot:12b}]
data remove storage vplib:temp array[{Slot:13b}]
data remove storage vplib:temp array[{Slot:20b}]
data remove storage vplib:temp array[{Slot:21b}]
data remove storage vplib:temp array[{Slot:22b}]

# Remove output
data remove storage vplib:temp array[{Slot:16b}]

# Summon items at nearest player
scoreboard players set #set_owner vplib.temp 0
execute if data storage vplib:temp array[0] at @p positioned ~ ~0.5 ~ run function vplib:custom_crafting/v1/block/table/general/summon_items

# Kill and clear slot holder items
kill @e[type=item,nbt={Item:{tag:{vplib:{slot_holder:1b}}}}]
clear @a[distance=..8] minecraft:gray_stained_glass_pane{vplib:{slot_holder:1b}}


# Set slot holders
replaceitem block ~ ~ ~ container.0 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:438900,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}
replaceitem block ~ ~ ~ container.1 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:438900,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}
replaceitem block ~ ~ ~ container.5 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:438900,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}
replaceitem block ~ ~ ~ container.6 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:438900,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}
replaceitem block ~ ~ ~ container.7 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:438900,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}
replaceitem block ~ ~ ~ container.8 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:438900,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}
replaceitem block ~ ~ ~ container.9 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:438900,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}
replaceitem block ~ ~ ~ container.10 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:438900,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}
replaceitem block ~ ~ ~ container.14 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:438900,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}
replaceitem block ~ ~ ~ container.15 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:438900,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}
replaceitem block ~ ~ ~ container.17 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:438900,vplib:{slot_holder:1b,type:1b,clickEvent:"craft_all"},display:{Name:'{"text":"Craft all","italic":false}'}}
replaceitem block ~ ~ ~ container.18 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:438900,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}
replaceitem block ~ ~ ~ container.19 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:438900,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}
replaceitem block ~ ~ ~ container.23 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:438900,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}
replaceitem block ~ ~ ~ container.24 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:438900,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}
replaceitem block ~ ~ ~ container.25 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:438900,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}
replaceitem block ~ ~ ~ container.26 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:438900,vplib:{slot_holder:1b,type:1b},display:{Name:'""'}}

# Update container
data modify storage vplib:temp container set from block ~ ~ ~ Items