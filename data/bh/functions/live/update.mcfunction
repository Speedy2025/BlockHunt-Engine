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
#execute as @a[tag=bh.hider] unless score @s bh.match = #match bh.multi run function bh:operations/interrupted_match
#execute as @a[tag=bh.seeker] unless score @s bh.match = #match bh.multi run function bh:operations/interrupted_match
#execute as @a[tag=bh.spectator] unless score @s bh.match = #match bh.multi run function bh:operations/interrupted_match
#execute as @a[tag=bh.wanderer] unless score @s bh.match = #match bh.multi run function bh:operations/interrupted_match

#End the match if a condition is true
execute if score #alive bh.multi matches 0 run function bh:operations/end_match
execute if score #remaining_time bh.multi matches ..0 run function bh:operations/end_match

