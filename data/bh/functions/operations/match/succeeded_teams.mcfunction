#############
# Set teams #
#############

# Calls:
#   - bh:operations/match/assign_teams/seekers
#   - bh:operations/match/assign_teams/hiders
#
# Called by:
#   - bh:operations/match/force_teams
#
# Context:
#   - Server
#
# Description:
#   Initializer for a match

# top ten recipes for disaster:
# 1. trust the user
# 2-10. trust the user

# However, I'm going to trust the user that
#  they didn't intentionally try to break the datapack

# I know, mistake... but maybe they know more than me?
#  (probably not >:D )

#Set loop counts
scoreboard players operation #hiders bh.multi = #config.force_hiders bh.multi
scoreboard players operation #seekers bh.multi = #config.force_seekers bh.multi

#Set the seekers
function bh:operations/match/assign_teams/seekers

#Set the hiders, if needed.
execute if score #config.force_hiders bh.multi matches 1.. run function bh:operations/match/assign_teams/hiders
execute if score #config.force_hiders bh.multi matches 0 run tag @a[tag=!bh.seeker,tag=bh.ready] add bh.hider

#Set the spectators/wanderers, if needed.
execute if score #config.spectate_mode bh.multi matches 0 run tag @a[tag=bh.ready,tag=!bh.hider,tag=!bh.seeker] add bh.spectator
execute if score #config.spectate_mode bh.multi matches 1 run tag @a[tag=bh.ready,tag=!bh.hider,tag=!bh.seeker] add bh.wanderer

#Now we've set up teams. Back to the OG function
