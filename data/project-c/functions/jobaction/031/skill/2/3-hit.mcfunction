summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["031F"],CustomName:'{"text":"Necro Bat","color":"light_purple"}',Radius:0.8f,Duration:5,Age:4,WaitTime:1,Effects:[{Id:11b,Amplifier:0b,Duration:1},{Id:7b,Amplifier:1b,Duration:1}]}
tag @s add 031
execute as @a if score @s playerNumber = @e[tag=031,limit=1,sort=nearest] playerNumber run data modify entity @e[tag=031F,limit=1,sort=nearest] Owner set from entity @s UUID
tag @s remove 031
tag @e[tag=031F] remove 031F
scoreboard players set @s counter 95
tag @e[tag=031-necroBHit] remove 031-necroBHit