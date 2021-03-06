################
# Update Match #
################

# Calls:
#   - bh:operations/interrupted_match
#   - bh:operations/end_match
#
# Called by:
#   - bh:live/tick
#
# Context:
#   - Server
#
# Description:
#   Updates the match

#Update time
scoreboard players remove #remaining_time bh.multi 1
execute if score #remaining_time bh.multi <= #halfway_time bh.multi run function #bh:msg/match/halfway

#Update bossbar
execute store result bossbar bh:match_timer value run scoreboard players get #remaining_time bh.multi

#Get total survivors
scoreboard players set #alive bh.multi 0
execute as @a[tag=bh.hider] run scoreboard players add #alive bh.multi 1

#Update Seeker Blinded Time
scoreboard players remove #blinded bh.blinded 1
execute if score #blinded bh.blinded matches -50..0 run function #bh:msg/match/seekers_released
execute if score #blinded bh.blinded matches -50..0 run scoreboard players set #blinded bh.blinded -51

#you RUDELY interrupted my match :(
# go to timeout
execute as @a[tag=bh.ready] unless score @s bh.match = #match bh.multi run function bh:operations/interrupted_match

#End the match if a condition is true
# check if the match is live to prevent duplicating the end_match
execute if score #alive bh.multi matches 0 run function bh:operations/end_match
execute if score #remaining_time bh.multi matches ..0 if score #live bh.multi matches 1 run function bh:operations/end_match

#End the match also if there's no more seekers
# set to -1 so that I can tell the difference in
scoreboard players set #alive bh.multi -1
execute as @a[tag=bh.seeker] run scoreboard players add #alive bh.multi 1

execute if score #alive bh.multi matches -1 if score #live bh.multi matches 1 run function bh:operations/end_match

