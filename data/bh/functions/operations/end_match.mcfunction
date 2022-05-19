################
# End Match #
################

# Calls:
#   - #bh:misc/end_match
#
# Called by:
#   - bh:live/tick
#
# Context:
#   - Server
#
# Description:
#   Updates the match

function #bh:misc/end_match

kill @e[tag=bh.disguise]

tag @a remove bh.seeker
tag @a remove bh.hider
tag @a remove bh.spectator
tag @a remove bh.wanderer
tag @a remove bh.ready
tag @a remove bh.disguised

scoreboard players reset @a bh.multi
scoreboard players reset @a bh.motion

scoreboard players set #live bh.multi 0
scoreboard players set #prev bh.multi 0

bossbar set bh:match_timer players @s[tag=bh.noexist]

