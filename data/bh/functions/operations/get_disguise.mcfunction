################
# Get Disguise #
################

# Calls:
#   - bh:operations/disguise/raycast
#
# Called by:
#   - bh:live/tick
#
# Context:
#   - Hiding Player
#
# Description:
#   Initializer for getting the player disguise

# The player requested a new disguise at the block up to ~4 blocks away.
# I will be checking in steps of 0.2 blocks to save energy while still having some precision
#   - Note: I could do 0.5 instead, I may test this out later.

#Set scoreboard to 4 blocks (4 * 5 (0.2 -> 1/5) = 20, add one because it updates before everything= 21) & start raycast
# Raycast is offset because yes
scoreboard players operation #ray bh.multi = #config.hider_range bh.multi
execute at @s anchored eyes positioned ^ ^ ^0.025 run function bh:operations/disguise/raycast