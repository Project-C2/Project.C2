execute at @s anchored eyes run summon armor_stand ^ ^ ^ {Tags:["054-03dummy","054-03"],Marker:1b,Invisible:1b,NoGravity:1b}
execute positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=054dummy,limit=1] feet positioned ^ ^ ^50 if entity @e[tag=054-03dummy,limit=1,distance=..1.3] run tag @s add 054-0hit
tag @e[tag=054-03dummy] remove 054-03dummy
kill @e[tag=054-03]