################################
# Tick Function for Block Hunt #
################################

# Calls:
#   - <nothing yet>
#
# Called by:
#   - #minecraft:tick
#
# Description:
#   Primary ticking function for Block Hunt

# Live Game
execute if score #live bh.multi matches 1 run function bh:live/tick

# Reset click detection
scoreboard players reset @a bh.click
# Side note: this is done here because you can still get the
#       score out of game and it would mess w/ stuff.