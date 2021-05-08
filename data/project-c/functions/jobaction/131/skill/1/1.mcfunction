function project-c:jobaction/131/skill/1/2

execute as @s[team=Red] at @s run summon armor_stand ~ ~0.3 ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["131-Gate","131-GateR","131-GateSummon"]}
execute as @s[team=Blue] at @s run summon armor_stand ~ ~0.3 ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["131-Gate","131-GateB","131-GateSummon"]}
execute positioned as @e[tag=131dummy] run teleport @e[tag=131-GateSummon,limit=1] ^ ^0.3 ^ ~ ~
kill @e[tag=131dummy]
tag @e[tag=131-GateSummon] remove 131-GateSummon
particle minecraft:cloud ~ ~ ~ 0 0 0 1 5
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.3 1
scoreboard players remove @s counter_1 1

data merge block -66 64 -11 {auto:1b}