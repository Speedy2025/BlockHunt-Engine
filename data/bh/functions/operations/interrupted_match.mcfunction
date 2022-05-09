###########
# Timeout #
###########

# Calls:
#   - <nothing>
#
# Called by:
#   - bh:live/tick
#
# Context:
#   - Player who was rude
#
# Description:
#   Forces interrupters to spectate/wander (based on config)

function #bh:msg/match/interrupted
tag @s remove bh.seeker
tag @s remove bh.hider
tag @s remove bh.spectator
tag @s remove bh.wanderer
tag @s remove bh.ready

scoreboard players operation @s bh.match = #match bh.multi

execute if score #config.spectate_mode bh.multi matches 0 run tag @s add bh.spectator
execute if score #config.spectate_mode bh.multi matches 1 run tag @s add bh.wanderer