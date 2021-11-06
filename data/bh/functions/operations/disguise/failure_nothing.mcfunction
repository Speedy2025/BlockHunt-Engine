##################################
# Raycast - Failure from Nothing #
##################################

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
#   Informs the player of failed raycast due to distance

scoreboard players set #ray bh.multi -1
title @s times 1 18 1
title @s actionbar [{"text":"That block is too far away!","color":"red"}]