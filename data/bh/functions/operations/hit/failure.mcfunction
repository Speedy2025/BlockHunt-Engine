#####################
# Raycast - Failure #
#####################

# Calls:
#   - N/A
#
# Called by:
#   - bh:operations/hit/raycast
#
# Context:
#   - Seeking Player
#
# Description:
#   Informs the player of failed raycast

scoreboard players set #ray bh.multi -1
title @s times 1 18 1
scoreboard players operation @s bh.cooldown = #config.seeker_miss bh.multi

#Oddly enough, To Customize
playsound entity.armor_stand.place player @s ~ ~ ~ 10 2 1
particle minecraft:dust 1 1 1 10 ~ ~ ~ 0 0 0 0 1 force @s