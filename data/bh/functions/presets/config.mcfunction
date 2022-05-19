# !!!! DO NOT USE INVALID NUMBERS !!!!
# !! Anything not listed isn't safe !!
# !! ALL <#> input must be positive !!
# !! ALL <#> input must be non-zero !!
# !!!! DO NOT USE INVALID NUMBERS !!!!

#           I'm not responsible for damage done
#           because of invalid configs (or really anything)


# ?????????????????????????????????????????????????????
# ? Set the number at the end to your desired setting ?
# ?????????????????????????????????????????????????????
# seeing an * at the end indicates the default value

# Advanced people can take the config's tag (#bh:config) and
# generate the config dynamically using their own functions. 
# Use this as a template to see what options are required. 
# Not having these will likely break the datapack, so beware.

#- Switch to Seeker on Hider Death
# 0  - Eliminated to Spectator (Actual Spectator Mode)
# 1* - Eliminated to Seeker
# 2  - Eliminated to Wanderer (Just invisible)
scoreboard players set #config.switch_teams bh.multi 1

#- Hiders Wandering after Alignment
# 1* - Allow hiders to "leave" their block behind and roam
# 0  - Hiders cannot detatch from their block
scoreboard players set #config.allow_wander bh.multi 1

#- Maximum Time per Match, in Ticks
# 12,000* - 10 Minutes
# <#> - Custom Time
scoreboard players set #config.match_timer bh.multi 12000

#- Disguise alignment Range, in Ticks
#->> Special Note: it's important to make this a range to prevent issues with lag
# 50* & 100* - Aligns players after 2.5 to 5 seconds of not moving
# <#> - Custom Time
scoreboard players set #config.align_timer_min bh.multi 50
scoreboard players set #config.align_timer_max bh.multi 100

#- Freeze Disguise Timer, in Ticks
#->> Special Note: you should make this significantly less than #config.align_timer_min
#->>   to prevent a bug where the timer resets (???????)
# 5* - Stops teleporting disguises after being still 0.25s
# <#> - Custom Stillness time
scoreboard players set #config.freeze_disguise bh.multi 5

#- Seeker Blindfolded Time
# 600* - 30 Seconds
# <#> - Custom Blindfold Time
scoreboard players set #config.seeker_blindfold bh.multi 600

#- Max Seeker Hit Range, in 0.2 block steps
# 41* - 8 blocks
# <#> - Custom Range (Add 1 for good measure)
scoreboard players set #config.seeker_range bh.multi 41

#- Max Hider Disguise Range, in 0.2 (1/5) block steps
# 41* - 4 blocks
# <#> - Custom Range (Add 1 for good measure)
scoreboard players set #config.hider_range bh.multi 21

#- Hider Health
# 1* - Hiders can be hit once and not die
# <#> - Custom Health
scoreboard players set #config.hider_health bh.multi 1

#- Force Control of Teams
# 0 - Do not assign teams, assumes already handled w/ bh.seeker and bh.hider
# 1*  - Auto-Assign people to teams with tag bh.ready
scoreboard players set #config.force_teams bh.multi 1

#- If Force Control - Number of Seekers
# 2* - Two Seekers
# <#> - <#> Seekers
scoreboard players set #config.force_seekers bh.multi 2

#- If Force Control - Number of Hiders
#->> Special Note: This creates a "limit" to players entering
#->>  a match. Example: 2 Seekers & 8 Hiders = 10 player games
#->>  A match will FAIL TO START if it doesn't meet the limit.
# 0* - No Limits (recommended)
# <#> - <#> Hiders
scoreboard players set #config.force_hiders bh.multi 0

#- Spectate Mode
# 0 - Spectator Mode
# 1* - Wandering Mode
scoreboard players set #config.spectate_mode bh.multi 1

#> Hider/Seeker Cooldowns

#- Hider Hit Protection Duration, in Ticks
# 15* - 0.75s
# <#> - Custom Protection <#>
scoreboard players set #config.hider_protection bh.multi 15

#- Seeker Hit Cooldown (Miss), in Ticks
# 10* - 0.5s
# <#> - Custom Cooldown <#>
scoreboard players set #config.seeker_miss bh.multi 10

#- Seeker Hit Cooldown (Hit), in Ticks
# 30* - 1.5s
# <#> - Custom Cooldown <#>
scoreboard players set #config.seeker_hit bh.multi 30

#- Hider Exposed Duration, in Ticks
# 100* - 5s
# <#> - Custom Duration <#>
scoreboard players set #config.hider_exposure bh.multi 100

#- Hider Mini-Exposed Duration, in Ticks
# 20* - 1s
# <#> - Custom Duration <#>
scoreboard players set #config.hider_mini_exposure bh.multi 20

