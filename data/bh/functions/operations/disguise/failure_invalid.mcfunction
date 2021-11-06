########################################
# Raycast - Failure from Invalid Block #
########################################

# Calls:
#   - N/A
#
# Called by:
#   - bh:operations/disguise/raycast
#
# Context:
#   - Hiding Player
#
# Description:
#   Informs the player of failed raycast due to invalid block

scoreboard players set #ray bh.multi -1
title @s times 1 18 1
title @s actionbar [{"text":"You cannot disguise as that block.","color":"red"}]
particle angry_villager ~ ~ ~ 0.75 0.5 0.75 0 10 force @s