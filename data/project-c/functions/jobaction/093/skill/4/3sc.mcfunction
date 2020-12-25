execute as @e[tag=093_4] at @s run function project-c:jobaction/093/skill/4/3
summon area_effect_cloud 0.0 -0.2 0.0 {Tags:["093vector"],Duration:1}
execute as @e[tag=093vector,limit=1] store result entity @s Rotation[0] float 0.0001 run data get entity @s UUID[1] 1
execute as @e[tag=093vector,limit=1] at @s run tp @s ^ ^ ^0.8
execute as @e[tag=093vector,limit=1] store result entity @s Rotation[0] float 0.0001 run data get entity @s UUID[2] 1
execute as @e[tag=093vector,limit=1] at @s run tp @s ^ ^ ^0.8
execute as @e[tag=this2] run data modify entity @s Motion set from entity @e[tag=093vector,x=0,y=0,z=0,sort=nearest,limit=1] Pos
tag @e[tag=this2] remove this2
execute if entity @e[tag=093_4,limit=1] run schedule function project-c:jobaction/093/skill/4/3sc 1t replace


