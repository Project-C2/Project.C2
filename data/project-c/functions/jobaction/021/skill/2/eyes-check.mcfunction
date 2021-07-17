execute at @s anchored eyes run summon armor_stand ^ ^ ^ {Tags:["021-03dummy","021-03"],Marker:1b,Invisible:1b,NoGravity:1b}
execute positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=021dummy,limit=1] feet positioned ^ ^ ^50 if entity @e[tag=021-03dummy,limit=1,distance=..0.8] run tag @s add hit
tag @e[tag=021-03dummy] remove 021-03dummy
kill @e[tag=021-03]