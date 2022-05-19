execute if score #alive bh.multi matches 0 if score #remaining_time bh.multi matches 1.. run function #bh:msg/match/seekers_win
execute if score #alive bh.multi matches 1.. if score #remaining_time bh.multi matches 0 run function #bh:msg/match/hiders_win
execute if score #alive bh.multi matches -1..0 if score #remaining_time bh.multi matches 0 run function #bh:msg/match/everyone_loses
execute if score #alive bh.multi matches 0 if score #remaining_time bh.multi matches 0 run function #bh:msg/match/everyone_loses
execute if score #alive bh.multi matches 1.. if score #remaining_time bh.multi matches 1.. run function #bh:msg/match/force_stop
execute if score #alive bh.multi matches -1 if score #remaining_time bh.multi matches 1.. run function #bh:msg/match/seekers_forfeit
