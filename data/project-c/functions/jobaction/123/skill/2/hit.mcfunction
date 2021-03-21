scoreboard players operation #123- playerNumber = @s playerNumber
execute as @a[scores={jobNumber=123}] if score @s playerNumber = #123- playerNumber run tag @s add user
execute as @a[tag=user] at @s run playsound entity.arrow.hit_player player @s ~ ~ ~ 0.6 0.5
tag @e[tag=hit,type=!#project-c:neac/undead] add 123_no_undead
execute as @e[tag=hit,tag=123_no_undead] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["ini"],Radius:0.5f,Particle:"minecraft:dust 0 0 0 0",Duration:5,Age:4,WaitTime:1,Effects:[{Id:7b,Amplifier:1b,Duration:1}]}
execute as @e[tag=hit,tag=!123_no_undead] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["ini"],Radius:0.5f,Particle:"minecraft:dust 0 0 0 0",Duration:5,Age:4,WaitTime:1,Effects:[{Id:6b,Amplifier:1b,Duration:1}]}
data modify entity @e[tag=ini,limit=1] Owner set from entity @a[tag=user,limit=1] UUID
tag @e[tag=ini] remove ini
tag @a[tag=user] remove user

execute if entity @e[tag=123_no_undead,limit=1] run tag @e[tag=123_no_undead] remove 123_no_undead
tag @e[tag=hit] remove hit

effect give @s instant_damage 1 0 true