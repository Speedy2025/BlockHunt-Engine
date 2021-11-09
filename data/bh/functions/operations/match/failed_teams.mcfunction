################
# Force Team Logic #
################

# Calls:
#   - <nothing yet>
#
# Called by:
#   - bh:operations/match/force_teams
#
# Context:
#   - Server
#
# Description:
#   Failed to initiate a match due to player limit

#Side note: do I really need to document this?
# yes... I must.
function #bh:msg/teams/failed
tag @a remove bh.ready
scoreboard players set #live bh.multi 0
scoreboard players set #prev bh.multi 0