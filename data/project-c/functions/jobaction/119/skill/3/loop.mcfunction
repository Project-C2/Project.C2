scoreboard players add @s counter_1 1
execute if entity @s[team=Red] positioned ~-0.5 ~ ~-0.5 if entity @e[tag=Battle,tag=!user,team=Red,dx=0,dy=0,dz=0,limit=1] run tag @e[tag=Battle,tag=!user,team=Red,dx=0,dy=0,dz=0] add hit
execute if entity @s[team=Blue] positioned ~-0.5 ~ ~-0.5 if entity @e[tag=Battle,tag=!user,team=Blue,dx=0,dy=0,dz=0,limit=1] run tag @e[tag=Battle,tag=!user,team=Blue,dx=0,dy=0,dz=0] add hit
#execute positioned ~-0.5 ~ ~-0.5 if entity @e[tag=Battle,tag=!user,dx=0,dy=0,dz=0,limit=1] as @e[tag=Battle,tag=!user,dx=0,dy=0,dz=0] if score @s teamNumber = @a[tag=user,limit=1] teamNumber run tag @s add hit
summon area_effect_cloud ~ ~ ~ {Tags:["119_3particle"],Duration:1}
execute unless score @s counter_1 matches 100.. unless entity @e[tag=hit,limit=1] positioned ^ ^ ^0.4 if block ~ ~ ~ #project-c:wancomatter/like_air run function project-c:jobaction/119/skill/3/loop
