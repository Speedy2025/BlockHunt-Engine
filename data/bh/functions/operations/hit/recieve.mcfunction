############################
# Raycast - Recieve Hit #
############################

# Calls:
#   - bh:operations/hit/damaged
#   - bh:operations/hit/exposed
#
# Called by:
#   - bh:operations/hit/success
#
# Context:
#   - Targeted Hider @ Target Block Position
#
# Description:
#   Expose the player or deal "damage" to 'em

tag @s add bh.immune
scoreboard players set @s bh.cooldown 15

execute as @s[tag=bh.wanderer] run function bh:operations/misc/no_wander
tag @s remove bh.wanderer.x

execute unless entity @s[tag=bh.disguised] run function bh:operations/hit/damaged
execute if entity @s[tag=bh.disguised] run function bh:operations/hit/exposed
