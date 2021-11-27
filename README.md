# BlockHunt-Engine

## What is it?

The Block Hunt engine is just that, an engine you can tinker with to create your own fun experiences of Block Hunt. 

For the average person, I've already created everything you need to run your own games. You'll want to skip all the way until the **Preparing the Arena** and **Starting the Game** sections. For the advanced users who really want to utilize the engine to its fullest, the next section covers the ideology of the datapack and some things to keep in mind.

## Setting Up Block Hunt

### 1. Ideology & Before Starting

TL;DR - Customization has optimization sacrifices && read the stupid datapack BEFORE you tinker with things.

This datapack is designed with customization in mind. In doing so, I've had to sacrifice optimization and performance so that you can have fun with making the experience unique. To achieve the feat of ultimate customization, I've put everything into tags. You'll obviously need to look at the datapack to master what each tag does. Some tags have commands attached to them that are required such as `#bh:msg/hider/disguise_invalid`. If they do, I have made an attempt to indicate which ones are required and which ones are not. Not all are marked as I've built this engine on the fly.

You should consider a few things when making your game. Unless you are making a minigame server where Block Hunt is the only thing, you'll want to make sure you do not show messages to those who aren't supposed to see it. Next, if you're adding features such as a radar system, consider using stuff already implemented such as the player tags `bh.hider` and `bh.seeker`. I already manage them, saving you extra overhead.

When configuring the datapack, use the tags. I encourage you to NOT use the included preset but to instead make your OWN datapack that interfaces with the tags. Not all changes are supported through the tags, and thats when you will want to change the datapack. Otherwise, use the tags.

Next, while the system is somewhat protected, don't just go randomly running functions in hopes to learn what they do. I've went out of my way with commenting what each function does. You'll see what functions it calls (not including tags), what called it, and what it does. In addition, you'll find the context of it.

Lastly, explore your options. You are encouraged to this unique and to your tastes. Don't like how I do something? FIX IT! Maybe hitreg isn't as precise as you like it. There's other implementations out there you can use.

### 2. Setting up the Config

Included in the presets section of the datapack is a config file & tag combo. First, read through the config before making any changes. You'll likely find what you want in there. Want hiders to disguise from 10000000000 blocks away but seekers have to hug hiders to hit them? You're insane, but there's configuration options for both. You can also adjust things like exposure times, hider protection (to stop trolls from bombarding a hider D:), and even what mode players are eliminated to.

A smart person can in theory set up the config based on what map the datapack is handling. If for instance you store the map choice as a score, you could run different configs based on that score. For bigger maps, I recommend longer blindfold time and longer matches. Smaller maps should have less hiding time, less players, and shorter matches. I don't enforce this, you're free to be crazy. Go nuts.

A full list of things you can configure from the config file includes...
* Elimination Mode (Spectator, Seeker, Wanderer)
* Allowing Wandering
* Duration of Matches
* Time before Disguise Alignment
* Duration of Blindfold 
* Seeker Hit Range
* Hider Disguise Range
* Hider Health
* Allowing Automatic Team Settup
* - How Many Seekers
* - How Many Hiders
* Spectating Mode (Spectator, Wanderer)
* Hider Protection
* Seeker Miss Cooldown
* Seeker Hit Cooldown
* Hider Exposed Time
* Hider Mini-Exposed Time

Most of these are fairly self-explanitory. I'll explain the mechanics in the **Mechanics** section of the README. Skip ahead if you need to see, otherwise continue on. Oh yeah, don't forget: you MUST set everything. No exceptions.

#### Bonus: Setting up Blocks

As a bonus, you can change what blocks you can disguise as and what blocks the hitreg will pass through. Just look at the block tags.


### 3. Preparing the Arena

Congrats! You set up the datapack, installed an extension to it, or are brave enough to play vanilla. Regardless, the game is almost ready to play. You need to decide 3-4 things:
1. Where should the hiders spawn?
2. Where should the seekers spawn?
3. Where should the spectators spawn?
4. Where should the wanderers spawn?

I'd suggest combining questions 3 and 4 for simplicity. Once you've decided, you'll need to spawn markers to select the locations. Since most people are not command-familiar, I'm going to give you the commands:
1. Hiders - `/summon marker <X> <Y> <Z> {Tags:['bh.hider.spawn']}`
1. Seekers - `/summon marker <X> <Y> <Z> {Tags:['bh.seeker.spawn']}`
1. Spectators - `/summon marker <X> <Y> <Z> {Tags:['bh.spectator.spawn']}`
1. Wanderers - `/summon marker <X> <Y> <Z> {Tags:['bh.wanderer.spawn']}`

For the command-savvy people, you can move the markers around as you want. If you made a map selector, make sure that it moves the markers around accordingly.

For the less command-savvy people, do you see the `<X> <Y> <Z>` in the above commands? If you want it to be where you're at, just replace it with `~ ~ ~`.

The last thing you need to do is TEST the map. Make sure you can't get out of bounds & make sure you can't be something cheeky. You'll also want to make sure the markers exist.

### 4. Starting the Game

You haven't even read the mechanics and you want to start a game? I don't blame you. There's two ways to start a game based on what you set up in the config. 
* If you didn't touch the config at all, give any players you want to play the `bh.ready` tag. If you want everyone to play, do `/tag @a add bh.ready`.
* If you DID touch the config and set `#config.force_teams` to zero, give everyone the respective tags, INCLUDING `bh.ready`. I'm not telling you how to do it because you should have read it.

Once you've set up who's playing and everyone's in the game, set `#live bh.multi` to 1. For the less command-savvy, this is the command:

`/scoreboard players set #live bh.multi 1`

Good luck! May the best hiders/seekers win.

## Mechanics
_Coming soon_