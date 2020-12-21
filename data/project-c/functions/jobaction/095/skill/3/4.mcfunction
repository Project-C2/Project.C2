scoreboard players set @s counter_1 7
execute if score @s counter_5 matches 400..550 positioned 0.0 0.10 0.0 run summon area_effect_cloud ^ ^ ^0.55 {Tags:["vector"],Duration:1}
execute if score @s counter_5 matches 300..399 positioned 0.0 0.10 0.0 run summon area_effect_cloud ^ ^ ^0.66 {Tags:["vector"],Duration:1}
execute if score @s counter_5 matches 200..299 positioned 0.0 0.10 0.0 run summon area_effect_cloud ^ ^ ^0.78 {Tags:["vector"],Duration:1}
execute if score @s counter_5 matches 100..199 positioned 0.0 0.10 0.0 run summon area_effect_cloud ^ ^ ^0.91 {Tags:["vector"],Duration:1}
execute if score @s counter_5 matches ..99 positioned 0.0 0.10 0.0 run summon area_effect_cloud ^ ^ ^1.05 {Tags:["vector"],Duration:1}
execute if score @s counter_3 matches 1.. as @e[tag=vector] positioned as @s run tp @s ^ ^ ^-0.15
execute positioned ~ ~-0.365 ~ run data modify entity @e[tag=095setMotion,limit=1,distance=..0.2,sort=nearest] Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]

execute unless score @s counter_3 matches 1.. run function project-c:jobaction/095/skill/3/4-