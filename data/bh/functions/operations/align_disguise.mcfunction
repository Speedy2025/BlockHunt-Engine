##################
# Align Disguise #
##################

# Calls:
#   - <nothing>
#
# Called by:
#   - bh:live/tick
#
# Context:
#   - Hiding Player who has been stationary for 2.5s
#
# Description:
#   Aligns the player's disguise

#Get the target disguise
scoreboard players operation #target bh.id = @s bh.id
execute as @e[predicate=bh:id_match,type=armor_stand] positioned as @s align xz positioned ~0.5 ~ ~0.5 run tp @s ~ ~-0.0400 ~ 
playsound minecraft:block.beehive.exit master @s ~ ~ ~ 10 1.5 0

#To allow semi-accuracy but not spam it.
scoreboard players operation @s bh.motion = #config.align_timer_max bh.multi
scoreboard players add @s bh.motion 1