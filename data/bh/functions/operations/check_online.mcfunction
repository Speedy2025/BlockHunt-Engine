################
# Check Online #
################

# Calls:
#   - <nothing yet>
#
# Called by:
#   - bh:live/tick
#
# Context:
#   - Falling Block
#
# Description:
#   Checks if the matching player is still online and dies if they aren't

# Store for check
scoreboard players operation #target bh.id = @s bh.id
execute unless entity @a[predicate=bh:id_match,tag=bh.hider] run kill @e[predicate=bh:id_match]