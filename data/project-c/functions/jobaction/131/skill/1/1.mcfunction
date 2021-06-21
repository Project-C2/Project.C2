function project-c:jobaction/131/skill/1/2
summon armor_stand ^ ^1 ^50 {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["131-Target"]}

execute as @s[team=Red] at @s run summon armor_stand ~ ~0.3 ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["131-Gate","131-GateR","131-GateSummon"]}
execute as @s[team=Blue] at @s run summon armor_stand ~ ~0.3 ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["131-Gate","131-GateB","131-GateSummon"]}
execute as @e[tag=131-GateSummon,limit=1] at @s run teleport @s @e[tag=131dummy,limit=1]

execute as @e[tag=131-GateSummon,limit=1] at @s facing entity @e[tag=131-Target,limit=1] feet run teleport @e[tag=131-GateSummon,limit=1] ^ ^1 ^ ~ ~

execute as @e[tag=131dummy] at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 1 2

kill @e[tag=131dummy]
kill @e[tag=131-Target]
tag @e[tag=131-GateSummon] remove 131-GateSummon
#particle minecraft:cloud ~ ~ ~ 0 0 0 1 5
#playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.3 1

data merge block -66 64 -11 {auto:1b}