################################
# Load Function for Block Hunt #
################################

# Calls:
#   - <nothing>
#
# Called by:
#   - #minecraft:load
#
# Description:
#   Primary loading function for Block Hunt

#> Scoreboard Objectives
# Red denotes technical (things like raycasting, etc.)
# Blue denotes tracking (pre-manipulated numbers)
# Green denotes visible (live scores)
scoreboard objectives add bh.multi dummy [{"text":"bh.multi","color":"red"}]
scoreboard objectives add bh.id dummy [{"text":"bh.id","color":"blue"}]
scoreboard objectives add bh.click minecraft.used:carrot_on_a_stick [{"text":"bh.click","color":"blue"}]
scoreboard objectives add bh.motion dummy [{"text":"bh.motion","color":"blue"}]
scoreboard objectives add bh.exposed dummy [{"text":"bh.exposed","color":"blue"}]
scoreboard objectives add bh.cooldown dummy [{"text":"bh.cooldown","color":"blue"}]
#Side note: I could make bh.cooldown the big deal instead of splitting between bh.exposed and it, but why should I? 
# Optimization... nah \_(o,o)_\

scoreboard objectives add bh.x dummy [{"text":"bh.x","color":"blue"}]
scoreboard objectives add bh.y dummy [{"text":"bh.y","color":"blue"}]
scoreboard objectives add bh.z dummy [{"text":"bh.z","color":"blue"}]

#> Forceload
# I do this the long way because I'm stupid, okay?
execute positioned 29999998 15 -29999964 run forceload add ~ ~

#> Gamerules
#Unfortunately, I have to mess with a gamerule for this
#- to work. :(
gamerule reducedDebugInfo true