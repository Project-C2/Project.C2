execute anchored eyes run summon armor_stand ^ ^ ^ {Tags:["110anti_aircraft_projectile","first"],Marker:1b,Invisible:1b,NoGravity:1b}
scoreboard players operation @e[tag=first,limit=1] subcounter = @s counter
scoreboard players operation @e[tag=first,limit=1] playerNumber = @s playerNumber
execute if entity @s[team=Red] run team join RedDummy @e[tag=first]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=first]
execute anchored eyes run tp @e[tag=first] ^ ^ ^ ~ ~
tag @e[tag=first] remove first

effect clear @s minecraft:slowness
data merge block -48 64 -60 {auto:1b}