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
effect give @s minecraft:glowing 5 0 true
kill @e[predicate=bh:id_match,type=!player]
scoreboard players set @s bh.exposed 100
effect give @s minecraft:speed 3 4 true
tag @s remove bh.disguised