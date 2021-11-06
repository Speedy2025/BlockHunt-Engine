# Teleport Hider Disguises
execute if score @s[tag=!bh.wanderer] bh.motion matches ..5 run function bh:operations/teleport_disguise
#Side note: this ends earlier than I align to save on performance (negligable)
#   and to *sometimes* prevent a bug where motion resets to 0
#   note the *sometimes*, this doesn't prevent it in all cases

# Align Disguises
execute as @s[tag=!bh.wanderer] run function bh:operations/get_motion
execute as @s[tag=!bh.wanderer] if score @s bh.motion >= #config.align_timer_min bh.multi if score @s bh.motion <= #config.align_timer_max bh.multi run function bh:operations/align_disguise