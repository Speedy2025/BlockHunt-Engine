#Real talk, I don't need to include hiders for this. o.o
tellraw @a[tag=bh.hider] ["",{"text":"Block Hunt","color":"green"},{"text":">> ","color":"dark_gray"},{"text":"The seekers have forfeited the match, you win by default!"}]
tellraw @a[tag=bh.seeker] ["",{"text":"Block Hunt","color":"green"},{"text":">> ","color":"dark_gray"},{"text":"HOW DID YOU SEE THIS? CHEATER!"}]
tellraw @a[tag=bh.spectator] ["",{"text":"Block Hunt","color":"green"},{"text":">> ","color":"dark_gray"},{"text":"The seekers have forfeited the match!"}]
tellraw @a[tag=bh.wanderer,tag=!bh.hider] ["",{"text":"Block Hunt","color":"green"},{"text":">> ","color":"dark_gray"},{"text":"The seekers have forfeited the match!"}]
