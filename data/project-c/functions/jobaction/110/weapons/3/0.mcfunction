summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["this"]}
execute anchored eyes run tp @e[tag=this,limit=1] ^ ^ ^ ~ ~
scoreboard players set #dummy counter 0
execute as @e[tag=this,limit=1] at @s run function project-c:jobaction/110/weapons/3/move
scoreboard players reset #dummy counter
execute as @e[tag=this,limit=1] at @s positioned ^ ^ ^0.05 if block ~ ~ ~ #project-c:wancomatter/like_air align xyz unless entity @e[type=shulker,dx=0,dy=0,dz=0] at @s run tp @s ^ ^ ^0.05
execute as @e[tag=this,limit=1] at @s positioned ^ ^ ^0.025 if block ~ ~ ~ #project-c:wancomatter/like_air align xyz unless entity @e[type=shulker,dx=0,dy=0,dz=0] at @s run tp @s ^ ^ ^0.025
execute as @e[tag=this,limit=1] at @s positioned ^ ^ ^0.0125 if block ~ ~ ~ #project-c:wancomatter/like_air align xyz unless entity @e[type=shulker,dx=0,dy=0,dz=0] at @s run tp @s ^ ^ ^0.0125
execute as @e[tag=this,limit=1] at @s positioned ^ ^ ^0.00625 if block ~ ~ ~ #project-c:wancomatter/like_air align xyz unless entity @e[type=shulker,dx=0,dy=0,dz=0] at @s run tp @s ^ ^ ^0.00625
execute as @e[tag=this,limit=1] at @s positioned ^ ^ ^0.003125 if block ~ ~ ~ #project-c:wancomatter/like_air align xyz unless entity @e[type=shulker,dx=0,dy=0,dz=0] at @s run tp @s ^ ^ ^0.003125
execute at @e[tag=this,tag=110-hit-block] align xyz if entity @e[type=!armor_stand,type=!area_effect_cloud,tag=!this,dx=0,dy=0,dz=0] run tag @e[tag=this,tag=110-hit-block] remove 110-hit-block
execute as @e[tag=this,tag=110-hit-block] at @s align xyz run tp @s ~ ~ ~
execute if entity @e[tag=this,tag=110-hit-block,limit=1] at @e[tag=this,tag=110-hit-block,limit=1] positioned ~0.5 ~ ~0.5 run function project-c:jobaction/110/weapons/3/set-stone
kill @e[tag=this]