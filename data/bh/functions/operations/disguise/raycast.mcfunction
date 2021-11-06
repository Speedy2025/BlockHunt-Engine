####################
# Disguise Raycast #
####################

# Calls:
#   - bh:operations/disguise/raycast
#   - bh:operations/disguise/success
#   - bh:operations/disguise/failure_nothing
#   - bh:operations/disguise/failure_invalid
#
# Called by:
#   - bh:operations/get_disguise
#
# Context:
#   - Hiding Player
#
# Description:
#   Raycaster for getting a disguise

# The player requested a new disguise at the block up to ~4 blocks away.
# I will be checking in steps of 0.2 blocks to save energy while still having some precision

# First, decrement counter
scoreboard players remove #ray bh.multi 1

# Next, check to see if the block is VALID to disguise as. If not, continue raycast.
#   - In .../success, I flipped #ray to -1 to mark it as done
execute if block ~ ~ ~ #bh:valid_disguise align xyz positioned ~0.5 ~0.5 ~0.5 run function bh:operations/disguise/success

# Next, check to see if the block is INVALID to disguise as.
execute unless block ~ ~ ~ #bh:valid_disguise unless block ~ ~ ~ #bh:air align xyz positioned ~0.5 ~0.5 ~0.5 run function bh:operations/disguise/failure_invalid


# Next, check if it CAN'T continue to prevent a huge amount of fails
execute if score #ray bh.multi matches 0 run function bh:operations/disguise/failure_nothing

# Lastly, if it can continue, continue. Note the above comment on #ray being -1
execute if score #ray bh.multi matches 1.. positioned ^ ^ ^0.2 run function bh:operations/disguise/raycast
