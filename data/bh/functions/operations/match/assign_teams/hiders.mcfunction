##################
# Hider Selector #
##################

# Calls:
#   - bh:operations/match/assign_teams/hiders
#
# Called by:
#   - bh:operations/match/succeeded_teams
#
# Context:
#   - Server
#
# Description:
#   Selects hiders

tag @r[sort=random,tag=bh.ready,tag=!bh.hider] add bh.hider
scoreboard players remove #hiders bh.multi 1
execute if score #hiders bh.multi matches 1.. run function bh:operations/match/assign_teams/hiders