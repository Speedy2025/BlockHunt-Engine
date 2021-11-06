####################
# Match Initiation #
####################

# Calls:
#   - bh:operations/match/force_teams
#
# Called by:
#   - bh:main/tick
#
# Description:
#   Begin a match

#Avoid duplication
scoreboard players set #prev bh.multi 1

#Cycle next match - catches people who RUDELY interrupt matches
scoreboard players add #match bh.multi 1

#Assign teams if needed
execute if score #config.force_teams bh.multi matches 1 run function bh:operations/match/force_teams

#From here on out, abort if above failed
execute if score #live bh.multi matches 1 run function bh:operations/match/continue_initiation
