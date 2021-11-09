scoreboard players operation #seconds bh.multi = #config.seeker_blindfold bh.multi
scoreboard players operation #seconds bh.multi /= #CONST.20 bh.multi

tellraw @a[tag=bh.ready] ["",{"text":"Block Hunt","color":"green"},{"text":">> ","color":"dark_gray"},{"text":"The seekers will be released in "},{"score":{"name": "#seconds","objective": "bh.multi"},"color":"gold"},{"text":" seconds","color":"gold"}]
