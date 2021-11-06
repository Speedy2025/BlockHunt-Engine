####################
# Toggle Wandering #
####################

# Calls:
#   - bh:operations/misc/no_wander
#   - bh:operations/misc/yes_wander
#
# Called by:
#   - bh:live/tick
#
# Context:
#   - Hiding Player
#
# Description:
#   Toggles the player's wandering state

# bh.wander.x is used to prevent logical conflicts
execute if entity @s[tag=bh.wanderer] run function bh:operations/misc/no_wander
execute if entity @s[tag=!bh.wanderer,tag=!bh.wanderer.x] run function bh:operations/misc/yes_wander
tag @s remove bh.wanderer.x