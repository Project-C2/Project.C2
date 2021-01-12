scoreboard players operation #119- playerNumber = @s playerNumber
#scoreboard players operation #119- teamNumber = @s teamNumber

execute as @e[tag=119on] unless score @s playerNumber = #119- playerNumber run tag @s remove 119on
execute at @e[tag=119on] positioned ~ ~0.2 ~ run function project-c:jobaction/119/skill/0/2

execute if entity @e[tag=hit1,limit=1] run playsound entity.arrow.hit_player player @s ~ ~ ~ 0.6 0.5
execute if entity @e[tag=hit1,limit=1] run tag @e[tag=hit1,type=!#project-c:neac/undead] add 119_no_undead
execute if entity @e[tag=hit1,limit=1] at @e[tag=hit1,tag=!hit2,tag=119_no_undead] run summon area_effect_cloud ~ ~ ~ {Tags:["ini"],Radius:0.8f,Particle:"minecraft:falling_dust minecraft:pink_wool",Duration:5,Age:4,WaitTime:1,Effects:[{Id:7b,Amplifier:1b,Duration:1}]}
execute if entity @e[tag=hit2,limit=1] at @e[tag=hit1,tag=hit2,tag=119_no_undead] run summon area_effect_cloud ~ ~ ~ {Tags:["ini"],Radius:0.8f,Particle:"minecraft:falling_dust minecraft:pink_wool",Duration:5,Age:4,WaitTime:1,Effects:[{Id:7b,Amplifier:2b,Duration:1}]}
execute if entity @e[tag=hit1,limit=1] at @e[tag=hit1,tag=!hit2,tag=!119_no_undead] run summon area_effect_cloud ~ ~ ~ {Tags:["ini"],Radius:0.8f,Particle:"minecraft:falling_dust minecraft:pink_wool",Duration:5,Age:4,WaitTime:1,Effects:[{Id:6b,Amplifier:1b,Duration:1}]}
execute if entity @e[tag=hit2,limit=1] at @e[tag=hit1,tag=hit2,tag=!119_no_undead] run summon area_effect_cloud ~ ~ ~ {Tags:["ini"],Radius:0.8f,Particle:"minecraft:falling_dust minecraft:pink_wool",Duration:5,Age:4,WaitTime:1,Effects:[{Id:6b,Amplifier:2b,Duration:1}]}
execute as @e[tag=ini] run data modify entity @s Owner set from entity @a[scores={jobNumber=119},limit=1,sort=nearest] UUID
tag @e[tag=ini] remove ini

execute if entity @e[tag=119_no_undead,limit=1] run tag @e[tag=119_no_undead] remove 119_no_undead
execute if entity @e[tag=hit1,limit=1] run tag @e[tag=hit1] remove hit1
execute if entity @e[tag=hit2,limit=1] run tag @e[tag=hit2] remove hit2
