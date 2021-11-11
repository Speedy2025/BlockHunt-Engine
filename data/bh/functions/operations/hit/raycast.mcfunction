###############
# Hit Raycast #
###############

# Calls:
#   - bh:operations/hit/raycast
#   - bh:operations/hit/success
#   - bh:operations/hit/failure
#
# Called by:
#   - bh:operations/attempt_hit
#
# Context:
#   - Seeking player
#
# Description:
#   Raycaster for hitting a player

# The player wants to check if a player hit is within 4 blocks.
# I will be checking in steps of 0.2 blocks to save energy while still having some precision

# First, decrement counter
scoreboard players remove #ray bh.multi 1

#   - In .../success, I flipped #ray to -1 to mark it as done
# I would bypass .../hit/success for the player, but I need it to NOT bypass immunity.
execute positioned ~ ~-1 ~ as @e[type=player,distance=0..1,tag=bh.hider,tag=!bh.wanderer,tag=!bh.disguised] at @s run function bh:operations/hit/success
execute align xyz positioned ~0.5 ~0.25 ~0.5 as @e[type=falling_block,distance=0..0.55] at @s run function bh:operations/hit/success

# Next, check to see if the block is a wall.
execute unless block ~ ~ ~ #bh:passable align xyz positioned ~0.5 ~0.5 ~0.5 run function bh:operations/hit/failure


# Next, check if it CAN'T continue to prevent a huge amount of fails
execute if score #ray bh.multi matches 0 run function bh:operations/hit/failure

# Lastly, if it can continue, continue. Note the above comment on #ray being -1
execute if score #ray bh.multi matches 1.. positioned ^ ^ ^0.2 run function bh:operations/hit/raycast
