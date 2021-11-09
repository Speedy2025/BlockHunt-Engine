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

scoreboard objectives add bh.multi dummy [{"text":"bh.multi","color":"red"}]
scoreboard objectives add bh.match minecraft.used:carrot_on_a_stick [{"text":"bh.match","color":"blue"}]
scoreboard objectives add bh.id dummy [{"text":"bh.id","color":"blue"}]
scoreboard objectives add bh.click minecraft.used:carrot_on_a_stick [{"text":"bh.click","color":"blue"}]
scoreboard objectives add bh.motion dummy [{"text":"bh.motion","color":"blue"}]
scoreboard objectives add bh.exposed dummy [{"text":"bh.exposed","color":"blue"}]
scoreboard objectives add bh.cooldown dummy [{"text":"bh.cooldown","color":"blue"}]
scoreboard objectives add bh.blinded dummy [{"text":"bh.blinded","color":"blue"}]
#Side note: I could make bh.cooldown the big deal instead of splitting between bh.exposed and it, but why should I? 
# Optimization... nah \_(o,o)_\

scoreboard objectives add bh.x dummy [{"text":"bh.x","color":"blue"}]
scoreboard objectives add bh.y dummy [{"text":"bh.y","color":"blue"}]
scoreboard objectives add bh.z dummy [{"text":"bh.z","color":"blue"}]

#> Preinitialization
scoreboard players set #live bh.multi 0
scoreboard players set #prev bh.multi 0
scoreboard players set #CONST.2 bh.multi 2
scoreboard players set #CONST.20 bh.multi 20

#> Forceload
# I do this the long way because I'm stupid, okay?
execute positioned 29999998 15 -29999964 run forceload add ~ ~
