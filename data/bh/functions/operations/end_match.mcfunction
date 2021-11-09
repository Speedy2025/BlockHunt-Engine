################
# Update Match #
################

# Calls:
#   - <nothing>
#
# Called by:
#   - bh:live/tick
#
# Context:
#   - Server
#
# Description:
#   Updates the match

execute if score #alive bh.multi matches 0 if score #remaining_time bh.multi matches 1.. run function #bh:msg/match/seekers_win
execute if score #alive bh.multi matches 1.. if score #remaining_time bh.multi matches 0 run function #bh:msg/match/hiders_win
execute if score #alive bh.multi matches 0 if score #remaining_time bh.multi matches 0 run function #bh:msg/match/everyone_loses
execute if score #alive bh.multi matches 1.. if score #remaining_time bh.multi matches 1.. run function #bh:msg/match/force_stop

tag @a remove bh.seeker
tag @a remove bh.hider
tag @a remove bh.spectator
tag @a remove bh.wanderer
tag @a remove bh.ready

scoreboard players reset @a bh.motion

scoreboard players set #live bh.multi 0
scoreboard players set #prev bh.multi 0

bossbar set bh:match_timer players @s[tag=bh.noexist]

