####################
# Force Team Logic #
####################

# Calls:
#   - bh:operations/match/succeeded_teams
#   - bh:operations/match/failed_teams
#
# Called by:
#   - bh:operations/initiate_match
#
# Context:
#   - Server
#
# Description:
#   Initializer for a match

#Disable override from pesky admins >:(
tag @a remove bh.hider
tag @a remove bh.seeker

#Get the count of players
scoreboard players set #players bh.multi 0
execute as @a[tag=bh.ready] run scoreboard players add #players bh.multi 1

#Get the maximum players, if applicable
scoreboard players operation #expected_players bh.multi = #config.force_hiders bh.multi
scoreboard players operation #expected_players bh.multi += #config.force_seekers bh.multi

#You literally can't play block hunt without at least one hider.
execute if score #expected_players bh.multi = #config.force_seekers bh.multi run scoreboard players add #expected_players bh.multi 1

#Compare scores, if applicable
execute if score #expected_players bh.multi <= #players bh.multi run function bh:operations/match/succeeded_teams
execute if score #expected_players bh.multi > #players bh.multi run function bh:operations/match/failed_teams
#We're done here.