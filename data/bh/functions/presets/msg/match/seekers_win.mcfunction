#Real talk, I don't need to include hiders for this. o.o
tellraw @a[tag=bh.hider] ["",{"text":"Block Hunt","color":"green"},{"text":">> ","color":"dark_gray"},{"text":"The seekers won, better luck next time."}]
tellraw @a[tag=bh.seeker] ["",{"text":"Block Hunt","color":"green"},{"text":">> ","color":"dark_gray"},{"text":"The seekers have won! Congratulations!"}]
tellraw @a[tag=bh.spectator] ["",{"text":"Block Hunt","color":"green"},{"text":">> ","color":"dark_gray"},{"text":"The seekers have won!"}]
tellraw @a[tag=bh.wanderer,tag=!bh.hider] ["",{"text":"Block Hunt","color":"green"},{"text":">> ","color":"dark_gray"},{"text":"The seekers have won!"}]
