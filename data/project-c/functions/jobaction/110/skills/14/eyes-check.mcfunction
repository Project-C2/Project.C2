execute at @s anchored eyes run summon armor_stand ^ ^ ^ {Tags:["110dummy-","110--"],Marker:1b,Invisible:1b,NoGravity:1b}
execute positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=110dummy-,limit=1] feet positioned ^ ^ ^50 if entity @e[tag=110dummy-,limit=1,distance=..1.3] run tag @s add hit
tag @e[tag=110dummy-] remove 110dummy-
kill @e[tag=110--]