###########################
# Match Initiation, pt. 2 #
###########################

# Calls:
#   - #bh:init/seeker
#   - #bh:init/hider
#   - #bh:init/spectator
#   - #bh:init/wanderer
#
# Called by:
#   - bh:operations/initiate_match
#
# Context:
#   - Server
#
# Description:
#   Begin a match, pt. 2

#From here, we're good to go. Everybody got a team (if applicable)
#  and now we must initialize timers and whatnot.

#First, timers.
scoreboard players operation #remaining_time bh.multi = #config.match_timer bh.multi
scoreboard players operation #halfway_time bh.multi = #remaining_time bh.multi
scoreboard players operation #halfway_time bh.multi /= #CONST.2 bh.multi

#Alert users of seekers!
function #bh:msg/match/released_in
scoreboard players operation #blinded bh.blinded = #config.seeker_blindfold bh.multi

#Now, set the bossbar looks
bossbar add bh:match_timer "replaceme"
function #bh:misc/bossbar

#Next, set the bossbar to the configured time
execute store result bossbar bh:match_timer max run scoreboard players get #config.match_timer bh.multi
execute store result bossbar bh:match_timer value run scoreboard players get #remaining_time bh.multi
bossbar set bh:match_timer players @a[tag=bh.ready]

#Bossbar is set up, now to move everyone to the starting positions
# If you, the datapack reader, are having issues with spawning.
# 1. Try actually spawning in the markers
# 2. Forceload the chunks BEFORE you start a match.
# this may solve some of your issues.

tp @a[tag=bh.seeker] @e[type=marker,limit=1,tag=bh.seeker.spawn]
tp @a[tag=bh.hider] @e[type=marker,limit=1,tag=bh.hider.spawn]
tp @a[tag=bh.spectator] @e[type=marker,limit=1,tag=bh.spectator.spawn]
tp @a[tag=bh.wanderer] @e[type=marker,limit=1,tag=bh.wanderer.spawn]

# We need to initialize everyone.
execute as @a[tag=bh.seeker] run scoreboard players operation @s bh.blinded = #config.seeker_blindfold bh.multi
execute as @a[tag=bh.seeker] run function #bh:init/seeker
execute as @a[tag=bh.hider] run function #bh:init/hider
execute as @a[tag=bh.spectator] run function #bh:init/spectator
execute as @a[tag=bh.wanderer] run function #bh:init/wanderer

# Lastly, we need to update the alive player count & force match number
scoreboard players set #alive bh.multi 0
execute as @a[tag=bh.hider] run scoreboard players add #alive bh.multi 1

scoreboard players operation @a[tag=bh.seeker] bh.match = #match bh.multi
scoreboard players operation @a[tag=bh.hider] bh.match = #match bh.multi
scoreboard players operation @a[tag=bh.spectator] bh.match = #match bh.multi
scoreboard players operation @a[tag=bh.wanderer] bh.match = #match bh.multi

#We're done! Time to let the DP know we are.
gamerule reducedDebugInfo true
scoreboard players set #prev bh.multi 1