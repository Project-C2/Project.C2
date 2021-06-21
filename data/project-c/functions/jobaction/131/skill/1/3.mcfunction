execute as @s[team=Red] at @s run summon armor_stand ~ ~0.3 ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["131-GateR","131-GateP","131-GateSummon"]}
execute as @s[team=Blue] at @s run summon armor_stand ~ ~0.3 ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["131-GateB","131-GateP","131-GateSummon"]}

teleport @e[tag=131-GateSummon,tag=131-GateP] ^ ^1.5 ^-1.5 ~ ~
playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 2 1.5
playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 2 1.5

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1
tag @e[tag=131-GateSummon] remove 131-GateSummon

data merge block -64 61 -11 {auto:1b}