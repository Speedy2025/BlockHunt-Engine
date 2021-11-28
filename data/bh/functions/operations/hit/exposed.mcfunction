#################
# Hit - Exposed #
#################

# Calls:
#   - N/A
#
# Called by:
#   - bh:operations/hit/recieve
#
# Context:
#   - Hit Player
#
# Description:
#   Puts player under exposed state
effect clear @s minecraft:invisibility
kill @e[predicate=bh:id_match,type=!player]
scoreboard players operation @s bh.exposed = #config.hider_exposure bh.multi
tag @s remove bh.disguised