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
#   Puts player that was under exposed state under the damaged state

scoreboard players add @s bh.multi 1
function #bh:msg/hider/damaged
execute if score @s bh.multi > #config.hider_health bh.multi run function bh:operations/hit/eliminated
scoreboard players add @s bh.exposed 60
effect give @s minecraft:glowing 1 0 true