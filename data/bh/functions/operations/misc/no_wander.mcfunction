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