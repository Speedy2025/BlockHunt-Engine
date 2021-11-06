##############
# Get Motion #
##############

# Calls:
#   - <nothing>
#
# Called by:
#   - bh:live/tick
#
# Context:
#   - Player
#
# Description:
#   Detect if the player has moved

# Store the player's old position
scoreboard players operation #x bh.x = @s bh.x
scoreboard players operation #x bh.y = @s bh.y
scoreboard players operation #x bh.z = @s bh.z

# Store the player's new position
execute store result score @s bh.x run data get entity @s Pos[0] 100
execute store result score @s bh.y run data get entity @s Pos[1] 100
execute store result score @s bh.z run data get entity @s Pos[2] 100

# See if there's any differences
scoreboard players set #moved bh.motion 0
execute unless score #x bh.x = @s bh.x run scoreboard players set #moved bh.motion 1
execute unless score #x bh.y = @s bh.y run scoreboard players set #moved bh.motion 1
execute unless score #x bh.z = @s bh.z run scoreboard players set #moved bh.motion 1
execute unless score #moved bh.motion matches 1 run scoreboard players add @s bh.motion 1
execute unless score #moved bh.motion matches 0 run scoreboard players set @s bh.motion 0