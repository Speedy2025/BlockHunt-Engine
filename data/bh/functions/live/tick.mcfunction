################################
# Tick Function for Block Hunt #
################################

# Calls:
#   - bh:operations/misc/newid
#   - bh:operations/get_disguise
#   - bh:operations/teleport_disguise
#   - bh:operations/get_motion
#   - bh:operations/align_disguise
#
# Called by:
#   - bh:main/tick
#
# Description:
#   Primary ticking function for Block Hunt while Live

# The general premise behind my commands is this:
# 1. Start here while the game is running
# 2. Defer to a base bh:operations/ command
# 3. Any additional logic goes in a sub bh:operations/ command
# 
# Also, I do NOT target the player for hitreg and stuff to
#   since your goal is to hit BLOCKS. the players just control it.
#   This accounts for lag/delay on the client side.

# Initiate Match
execute unless score #prev bh.multi matches 1 run function bh:operations/initiate_match

# New ID
execute as @a[predicate=bh:no_id] run function bh:operations/misc/new_id

# Disguises - check if player still exists
execute as @e[type=falling_block,scores={bh.id=1..}] run function bh:operations/check_online

# Click Functions
execute as @a[scores={bh.click=1..,bh.exposed=0},tag=bh.hider,tag=!bh.wanderer] if score @s bh.motion < #config.align_timer_min bh.multi at @s run function bh:operations/get_disguise
execute if score #config.allow_wander bh.multi matches 1 as @a[scores={bh.click=1..,bh.exposed=0},tag=bh.hider,predicate=bh:sneaking] if score @s bh.motion >= #config.align_timer_min bh.multi at @s run function bh:operations/toggle_wander
execute as @a[scores={bh.click=1..,bh.cooldown=0,bh.blinded=0},tag=bh.seeker] at @s run function bh:operations/attempt_hit

# Tick All Roles
#   at @s is included in case, may not be needed
execute as @a[tag=bh.hider] at @s run function #bh:api/ticking/hider
execute as @a[tag=bh.seeker] at @s run function #bh:api/ticking/seeker
execute as @a[tag=bh.spectator] at @s run function #bh:api/ticking/spectator
execute as @a[tag=bh.wanderer] at @s run function #bh:api/ticking/wanderer
execute as @a[tag=bh.ready] at @s run function #bh:api/ticking/all

#Live Match Update, Includes failure condition
function bh:live/update