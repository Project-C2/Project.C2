execute as @s[team=Red] at @s run summon armor_stand ~ ~0.3 ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["131-Gate","131-GateR","131-Gate1","131-GateSummon"]}
execute as @s[team=Blue] at @s run summon armor_stand ~ ~0.3 ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["131-Gate","131-GateB","131-Gate1","131-GateSummon"]}
execute as @s[team=Red] at @s run summon armor_stand ~ ~0.3 ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["131-Gate","131-GateR","131-Gate2","131-GateSummon"]}
execute as @s[team=Blue] at @s run summon armor_stand ~ ~0.3 ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["131-Gate","131-GateB","131-Gate2","131-GateSummon"]}
execute as @s[team=Red] at @s run summon armor_stand ~ ~0.3 ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["131-Gate","131-GateR","131-Gate3","131-GateSummon"]}
execute as @s[team=Blue] at @s run summon armor_stand ~ ~0.3 ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["131-Gate","131-GateB","131-Gate3","131-GateSummon"]}
execute as @s[team=Red] at @s run summon armor_stand ~ ~0.3 ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["131-Gate","131-GateR","131-Gate4","131-GateSummon"]}
execute as @s[team=Blue] at @s run summon armor_stand ~ ~0.3 ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["131-Gate","131-GateB","131-Gate4","131-GateSummon"]}


teleport @e[tag=131-GateSummon,tag=131-Gate1] ^3 ^1.5 ^-1.5 ~ ~
teleport @e[tag=131-GateSummon,tag=131-Gate2] ^1 ^1.5 ^-1.5 ~ ~
teleport @e[tag=131-GateSummon,tag=131-Gate3] ^-1 ^1.5 ^-1.5 ~ ~
teleport @e[tag=131-GateSummon,tag=131-Gate4] ^-3 ^1.5 ^-1.5 ~ ~

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1
tag @e[tag=131-GateSummon] remove 131-GateSummon

scoreboard players set @s counter_3 0
data merge block -66 64 -11 {auto:1b}