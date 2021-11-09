####################
# Match Initiation #
####################

# Calls:
#   - bh:operations/match/force_teams
#
# Called by:
#   - bh:main/tick
#
# Context:
#   - Server
#
# Description:
#   Begin a match

#Cycle next match - catches people who RUDELY interrupt matches
scoreboard players add #match bh.multi 1

tag @a[tag=bh.seeker] add bh.ready
tag @a[tag=bh.hider] add bh.ready

#Load configuration
function #bh:config

#Reset health & blindness
scoreboard players set @a bh.multi 0
scoreboard players set @a bh.blinded 0

#Assign teams if needed
execute if score #config.force_teams bh.multi matches 1 run function bh:operations/match/force_teams
scoreboard players reset @a bh.motion
#From here on out, abort if above failed
execute if score #live bh.multi matches 1 run function bh:operations/match/continue_initiation
