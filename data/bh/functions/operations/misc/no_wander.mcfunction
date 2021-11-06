##################
# Stop Wandering #
##################

# Calls:
#   - <nothing>
#
# Called by:
#   - bh:operations/toggle_wander
#
# Context:
#   - Hiding Player
#
# Description:
#   Stops the player from wandering

tag @s add bh.wanderer.x
tag @s remove bh.wanderer

scoreboard players operation #target bh.id = @s bh.id
tp @e[type=falling_block,predicate=bh:id_match,limit=1]

playsound minecraft:block.note_block.harp master @s ~ ~ ~ 10 0.5 0
title @s times 0 3 1
title @s actionbar [{"text":"You're no longer wandering","color":"red"}]