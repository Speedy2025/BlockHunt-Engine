tellraw @a[tag=bh.hider] ["",{"text":"Block Hunt","color":"green"},{"text":">> ","color":"dark_gray"},{"text":"Half of the match remains."}]
tellraw @a[tag=bh.seeker] ["",{"text":"Block Hunt","color":"green"},{"text":">> ","color":"dark_gray"},{"text":"Half of the match remains."}]
tellraw @a[tag=bh.spectator] ["",{"text":"Block Hunt","color":"green"},{"text":">> ","color":"dark_gray"},{"text":"Half of the match remains."}]
tellraw @a[tag=bh.wanderer,tag=!bh.hider] ["",{"text":"Block Hunt","color":"green"},{"text":">> ","color":"dark_gray"},{"text":"Half of the match remains."}]

scoreboard players set #halfway_time bh.multi -10
