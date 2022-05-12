#################################
# Raycast - Successful Disguise #
#################################

# Calls:
#   - N/A
#
# Called by:
#   - bh:operations/disguise/raycast
#
# Context:
#   - Hiding Player @ Target Block Position
#
# Description:
#   Disguises the player with the block

# First and foremost, inform the player of success
scoreboard players set #ray bh.multi -1
function #bh:msg/hider/disguise_success
tag @s add bh.disguised

# Next, kill the player's current disguise, if applicable.
scoreboard players operation #target bh.id = @s bh.id
kill @e[predicate=bh:id_match,type=!player]

# Now, spawn in the disguise far away because of mojank
summon armor_stand 29999998 240 -29999964 {NoGravity:1b,Invisible:1b,Small:1b,Invulnerable:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:bedrock"},NoGravity:1b,Time:-2147483648,Air:-2147483648,Tags:["bh.as","bh.disguise"]}],Tags:["bh.disguise"]}
loot spawn 29999998 241 -29999964 mine ~ ~ ~ minecraft:netherite_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1}]}
execute positioned 29999998 241 -29999964 run data modify entity @e[type=falling_block,tag=bh.as,limit=1] BlockState.Name set from entity @e[type=item,distance=0..2,limit=1] Item.id
execute positioned 29999998 241 -29999964 run tp @e[type=item,distance=0..2] ~ -999 ~
execute positioned 29999998 241 -29999964 as @e[type=falling_block,distance=0..100] run scoreboard players operation @e[distance=0..10] bh.id = #target bh.id

# Fix up the rotation.
execute store result score #rotation bh.multi run data get entity @s Rotation[0]
execute if score #rotation bh.multi matches 0..45 run data modify entity @e[type=falling_block,tag=bh.as,limit=1] BlockState.Properties.facing set value "south"
execute if score #rotation bh.multi matches 46..135 run data modify entity @e[type=falling_block,tag=bh.as,limit=1] BlockState.Properties.facing set value "west"
execute if score #rotation bh.multi matches 136..180 run data modify entity @e[type=falling_block,tag=bh.as,limit=1] BlockState.Properties.facing set value "north"
execute if score #rotation bh.multi matches -180..-136 run data modify entity @e[type=falling_block,tag=bh.as,limit=1] BlockState.Properties.facing set value "north"
execute if score #rotation bh.multi matches -135..-46 run data modify entity @e[type=falling_block,tag=bh.as,limit=1] BlockState.Properties.facing set value "east"
execute if score #rotation bh.multi matches -45..-1 run data modify entity @e[type=falling_block,tag=bh.as,limit=1] BlockState.Properties.facing set value "south"

# Teleport and clean up
execute positioned as @s anchored feet run tp @e[predicate=bh:id_match,type=armor_stand] ~ ~-0.7005 ~
tag @e[type=falling_block,tag=bh.as] remove bh.as
effect give @s invisibility 1 0 true

# Align if needed
execute as @s if score @s bh.motion matches 50.. run function bh:operations/align_disguise
