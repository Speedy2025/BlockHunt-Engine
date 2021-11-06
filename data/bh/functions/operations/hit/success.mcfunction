############################
# Raycast - Successful Hit #
############################

# Calls:
#   - bh:operations/hit/recieve
#
# Called by:
#   - bh:operations/hit/raycast
#
# Context:
#   - Hiding Player or Falling Block or Armor Stand @ Target Block Position
#
# Description:
#   Hitreg Correction

scoreboard players set #ray bh.multi -1
scoreboard players set @a[tag=bh.nohit] bh.cooldown 20
# debug msg

scoreboard players operation #target bh.id = @s bh.id
execute as @a[tag=!bh.immune,scores={bh.cooldown=0},predicate=bh:id_match] run function bh:operations/hit/recieve
execute unless entity @a[tag=!bh.immune,scores={bh.cooldown=0},predicate=bh:id_match] run playsound entity.armor_stand.hit player @a[distance=0..20] ~ ~ ~ 10 2 1
