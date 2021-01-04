execute if entity @s[team=RedDummy,tag=!114-DO_NOT_AIM] if entity @e[team=Blue,tag=Battle,limit=1,distance=10..12] facing entity @e[team=Blue,tag=Battle,distance=10..12,sort=nearest,limit=1] feet run function project-c:jobaction/114/skill/1/schedule_loop/4
execute if entity @s[team=BlueDummy,tag=!114-DO_NOT_AIM] if entity @e[team=Red,tag=Battle,limit=1,distance=10..12] facing entity @e[team=Red,tag=Battle,distance=10..12,sort=nearest,limit=1] feet run function project-c:jobaction/114/skill/1/schedule_loop/4
tp @s ^ ^ ^0.5
execute if score @s counter matches 100.. run kill @s

execute if entity @s[team=RedDummy] if entity @e[team=Blue,tag=Battle,distance=..1.5,nbt={HurtTime:0s},limit=1] as @e[team=Blue,tag=Battle,distance=..1.5,nbt={HurtTime:0s}] at @s run function project-c:jobaction/114/skill/1/schedule_loop/5
execute if entity @s[team=BlueDummy] if entity @e[team=Red,tag=Battle,distance=..1.5,nbt={HurtTime:0s},limit=1] as @e[team=Red,tag=Battle,distance=..1.5,nbt={HurtTime:0s}] at @s run function project-c:jobaction/114/skill/1/schedule_loop/5

execute if block ~ ~ ~ #project-c:wancomatter/like_air run tag @s add 114-DO_NOT_PIERCE_WALL
execute if entity @s[tag=114-DO_NOT_PIERCE_WALL] unless block ^ ^ ^0.5 #project-c:wancomatter/like_air run kill @s

##演出
particle minecraft:sweep_attack ~ ~1.3 ~ 0.5 0.5 0.5 0 1
particle minecraft:flame ^ ^1 ^0.3 0.3 0 0.3 0 10