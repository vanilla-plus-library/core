#> vplib:custom_crafting/v1/block/table/gui/result/store_changes
# DEBUG
#say Recipe output changed.

# Save result
data remove storage vplib:temp recipeOutput.Slot
data modify storage vplib:temp storedData.recipeOutput set from storage vplib:temp recipeOutput

# Check if recipe changed
execute if score @s vpcc.saved matches 1.. if score #recipe vpcr.temp matches 1.. run tag @s add vplib.recipe_changed

# Update score
scoreboard players operation @s vpcc.saved = #recipe vpcr.temp

# Force show result
scoreboard players set #show_result vpcr.temp 1