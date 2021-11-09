###################
# Seeker Selector #
###################

# Calls:
#   - bh:operations/match/assign_teams/seekers
#
# Called by:
#   - bh:operations/match/succeeded_teams
#
# Context:
#   - Server
#
# Description:
#   Selects seekers

tag @r[tag=bh.ready,tag=!bh.seeker] add bh.seeker
scoreboard players remove #seekers bh.multi 1
say checked for a seeker
tellraw @a [{"score":{"name":"#seekers","objective":"bh.multi"}}]
execute if score #seekers bh.multi matches 1.. run function bh:operations/match/assign_teams/seekers