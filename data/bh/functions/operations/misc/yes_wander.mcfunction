##################
# Start Wandering #
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
#   Allows the player to wander
tag @s add bh.wanderer
playsound minecraft:block.note_block.harp master @s ~ ~ ~ 10 1.5 0
title @s times 0 3 1
title @s actionbar [{"text":"You're now wandering","color":"green"}]