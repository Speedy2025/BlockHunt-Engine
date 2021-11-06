###############
# Attempt Hit #
###############

# Calls:
#   - bh:operations/hit/raycast
#
# Called by:
#   - bh:live/tick
#
# Context:
#   - Seeking Player
#
# Description:
#   Initializer for attempting to hit

# I will be checking in steps of 0.2 blocks to save energy while still having some precision
#   - Note: I could do 0.5 instead, I may test this out later.

#Set scoreboard to 4 blocks (4 * 5 (0.2 -> 1/5) = 20, add one because it updates before everything= 21) & start raycast
# Raycast is offset because yes
tag @s add bh.nohit
scoreboard players operation #ray bh.multi = #config.seeker_range bh.multi
execute at @s anchored eyes positioned ^ ^ ^0.025 run function bh:operations/hit/raycast
tag @s remove bh.nohit