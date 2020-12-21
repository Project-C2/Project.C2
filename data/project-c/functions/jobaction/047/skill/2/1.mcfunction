scoreboard players remove @s counter_2 1
scoreboard players add @s counter_3 1
#赤
execute if entity @s[team=Red,scores={counter_3=5}] run summon armor_stand ^ ^ ^ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["047-0","047-0R","047-0Summoned","047-0Summoned1","047-02"],Pose:{Head:[-90f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:nether_star",Count:1b}]}
execute if entity @s[team=Red,scores={counter_3=5}] run summon armor_stand ^ ^ ^ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["047-0","047-0R","047-0Summoned","047-0Summoned2","047-02"],Pose:{Head:[-90f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:nether_star",Count:1b}]}
execute if entity @s[team=Red,scores={counter_3=5}] run summon armor_stand ^ ^ ^ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["047-0","047-0R","047-0Summoned","047-0Summoned3","047-02"],Pose:{Head:[-90f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:nether_star",Count:1b}]}
execute if entity @s[team=Red,scores={counter_3=5}] run summon armor_stand ^ ^ ^ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["047-0","047-0R","047-0Summoned","047-0Summoned4","047-02"],Pose:{Head:[-90f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:nether_star",Count:1b}]}
execute if entity @s[team=Red,scores={counter_3=5}] run summon armor_stand ^ ^ ^ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["047-0","047-0R","047-0Summoned","047-0Summoned5","047-02"],Pose:{Head:[-90f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:nether_star",Count:1b}]}
#青
execute if entity @s[team=Blue,scores={cuonter_3=5}] run summon armor_stand ^ ^ ^ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["047-0","047-0B","047-0Summoned","047-0Summoned1","047-02"],Pose:{Head:[-90f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:nether_star",Count:1b}]}
execute if entity @s[team=Blue,scores={counter_3=5}] run summon armor_stand ^ ^ ^ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["047-0","047-0B","047-0Summoned","047-0Summoned2","047-02"],Pose:{Head:[-90f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:nether_star",Count:1b}]}
execute if entity @s[team=Blue,scores={counter_3=5}] run summon armor_stand ^ ^ ^ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["047-0","047-0B","047-0Summoned","047-0Summoned3","047-02"],Pose:{Head:[-90f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:nether_star",Count:1b}]}
execute if entity @s[team=Blue,scores={counter_3=5}] run summon armor_stand ^ ^ ^ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["047-0","047-0B","047-0Summoned","047-0Summoned4","047-02"],Pose:{Head:[-90f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:nether_star",Count:1b}]}
execute if entity @s[team=Blue,scores={counter_3=5}] run summon armor_stand ^ ^ ^ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["047-0","047-0B","047-0Summoned","047-0Summoned5","047-02"],Pose:{Head:[-90f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:nether_star",Count:1b}]}
#
execute anchored eyes run teleport @e[tag=047-0Summoned1] ~ ~ ~ ~40 ~
execute anchored eyes run teleport @e[tag=047-0Summoned2] ~ ~ ~ ~20 ~
execute anchored eyes run teleport @e[tag=047-0Summoned3] ~ ~ ~ ~ ~
execute anchored eyes run teleport @e[tag=047-0Summoned4] ~ ~ ~ ~-20 ~
execute anchored eyes run teleport @e[tag=047-0Summoned5] ~ ~ ~ ~-40 ~
tag @e[tag=047-0Summoned1] remove 047-0Summoned1
tag @e[tag=047-0Summoned2] remove 047-0Summoned2
tag @e[tag=047-0Summoned3] remove 047-0Summoned3
tag @e[tag=047-0Summoned4] remove 047-0Summoned4
tag @e[tag=047-0Summoned5] remove 047-0Summoned5
data merge block -63 5 -20 {auto:1b}
scoreboard players set @s[scores={counter_3=5..}] counter_3 0
tag @e[tag=047-0Summoned] remove 047-0Summoned