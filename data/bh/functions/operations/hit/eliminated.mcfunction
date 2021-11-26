####################
# Hit - Eliminated #
####################

# Calls:
#   - N/A
#
# Called by:
#   - bh:operations/hit/damaged
#
# Context:
#   - Hit Player
#
# Description:
#   Eliminates the player and switches their team

#Not a hider anymore
tag @s remove bh.hider
tag @s remove bh.disguised

#Handle Team Swap based on config
execute if score #config.switch_teams bh.multi matches 0 run tag @s add bh.spectator
execute if score #config.switch_teams bh.multi matches 1 run tag @s add bh.seeker
execute if score #config.switch_teams bh.multi matches 2 run tag @s add bh.wanderer

#Reset Player
scoreboard players reset @s bh.multi
effect clear @s

#Notify everyone
function #bh:msg/hider/eliminated

# Initiate Player
execute if score #config.switch_teams bh.multi matches 0 run function #bh:init/spectator
execute if score #config.switch_teams bh.multi matches 1 run function #bh:init/seeker
execute if score #config.switch_teams bh.multi matches 2 run function #bh:init/wanderer