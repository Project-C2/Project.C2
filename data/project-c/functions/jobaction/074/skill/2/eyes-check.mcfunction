execute at @s anchored eyes run summon armor_stand ^ ^ ^ {Tags:["074-03dummy","074-03"],Marker:1b,Invisible:1b,NoGravity:1b}
execute positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=074dummy,limit=1] feet positioned ^ ^ ^50 if entity @e[tag=074-03dummy,limit=1,distance=..0.7] run tag @s add 074damaged
tag @e[tag=074-03dummy] remove 074-03dummy
kill @e[tag=074-03]