###############
# TP Disguise #
###############

# Calls:
#   - <nothing>
#
# Called by:
#   - bh:live/tick
#
# Context:
#   - Hiding Player
#
# Description:
#   Teleport the disguise to the player

scoreboard players operation #target bh.id = @s bh.id
execute at @s anchored feet run tp @e[predicate=bh:id_match,type=armor_stand] ~ ~-0.7 ~
#~ ~-0.7405 ~