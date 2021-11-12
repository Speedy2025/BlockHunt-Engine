# Reduce scores
scoreboard players remove @a[scores={bh.exposed=1..}] bh.exposed 1
scoreboard players remove @a[scores={bh.cooldown=1..}] bh.cooldown 1

#Reset tag - Stops players from being hit many times in a tick.
tag @a remove bh.immune

#H U N G E R
effect give @a[tag=bh.ready] saturation 1 127 true
effect give @a[tag=bh.ready] resistance 1 127 true