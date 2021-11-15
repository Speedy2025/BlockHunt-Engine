effect give @s minecraft:speed 1 0 true

#blinding effect
execute if score @s bh.blinded matches 1.. run effect give @s resistance 1 127 true
execute if score @s bh.blinded matches 20.. run effect give @s blindness 2 127 true
execute if score @s bh.blinded matches 1.. run effect give @s slowness 1 255 true
execute if score @s bh.blinded matches 1.. run effect give @s jump_boost 1 255 true
execute if score @s bh.blinded matches 1.. run scoreboard players remove @s bh.blinded 1

#by request
effect give @s minecraft:glowing 1 0 true