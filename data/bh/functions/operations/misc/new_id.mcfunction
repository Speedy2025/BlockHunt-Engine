##########
# New ID #
##########

# Calls:
#   - <nothing>
#
# Called by:
#   - bh:main/tick
#
# Context:
#   - Uninitialized Player
#
# Description:
#   For TWO (a few...) commands? Do I really need this header? Yes, yes I do.
#   Sets a player's id

#The player needs a fresh UID
# On a fresh world, this starts at 0 (or nothing)
scoreboard players add #id bh.id 1
scoreboard players operation @s bh.id = #id bh.id
scoreboard players set @s bh.cooldown 0
scoreboard players set @s bh.exposed 0