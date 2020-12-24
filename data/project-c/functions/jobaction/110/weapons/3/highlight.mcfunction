summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["this"]}
execute anchored eyes run tp @e[tag=this,limit=1] ^ ^ ^ ~ ~
scoreboard players set #110- counter 0
execute as @e[tag=this,limit=1] at @s run function project-c:jobaction/110/weapons/3/move
scoreboard players reset #110- counter
execute as @e[tag=this,limit=1] at @s positioned ^ ^ ^0.05 if block ~ ~ ~ #project-c:wancomatter/like_air align xyz unless entity @e[type=shulker,dx=0,dy=0,dz=0] at @s run tp @s ^ ^ ^0.05
execute as @e[tag=this,limit=1] at @s positioned ^ ^ ^0.025 if block ~ ~ ~ #project-c:wancomatter/like_air align xyz unless entity @e[type=shulker,dx=0,dy=0,dz=0] at @s run tp @s ^ ^ ^0.025
execute as @e[tag=this,limit=1] at @s positioned ^ ^ ^0.0125 if block ~ ~ ~ #project-c:wancomatter/like_air align xyz unless entity @e[type=shulker,dx=0,dy=0,dz=0] at @s run tp @s ^ ^ ^0.0125
execute as @e[tag=this,limit=1] at @s positioned ^ ^ ^0.00625 if block ~ ~ ~ #project-c:wancomatter/like_air align xyz unless entity @e[type=shulker,dx=0,dy=0,dz=0] at @s run tp @s ^ ^ ^0.00625
execute as @e[tag=this,limit=1] at @s positioned ^ ^ ^0.003125 if block ~ ~ ~ #project-c:wancomatter/like_air align xyz unless entity @e[type=shulker,dx=0,dy=0,dz=0] at @s run tp @s ^ ^ ^0.003125
execute at @e[tag=this,tag=110-hit-block] align xyz if entity @e[type=!armor_stand,type=!area_effect_cloud,tag=!this,dx=0,dy=0,dz=0] run tag @e[tag=this,tag=110-hit-block] remove 110-hit-block
execute at @e[tag=this,tag=110-hit-block] align xyz run particle dust 1 1 1 0.5 ~0.5 ~1 ~ 0.3 0 0 1 1 force @s
execute at @e[tag=this,tag=110-hit-block] align xyz run particle dust 1 1 1 0.5 ~0.5 ~1 ~1 0.3 0 0 1 1 force @s
execute at @e[tag=this,tag=110-hit-block] align xyz run particle dust 1 1 1 0.5 ~0.5 ~ ~ 0.3 0 0 1 1 force @s
execute at @e[tag=this,tag=110-hit-block] align xyz run particle dust 1 1 1 0.5 ~0.5 ~ ~1 0.3 0 0 1 1 force @s

execute at @e[tag=this,tag=110-hit-block] align xyz run particle dust 1 1 1 0.5 ~1 ~1 ~0.5 0 0 0.3 1 1 force @s
execute at @e[tag=this,tag=110-hit-block] align xyz run particle dust 1 1 1 0.5 ~ ~1 ~0.5 0 0 0.3 1 1 force @s
execute at @e[tag=this,tag=110-hit-block] align xyz run particle dust 1 1 1 0.5 ~1 ~ ~0.5 0 0 0.3 1 1 force @s
execute at @e[tag=this,tag=110-hit-block] align xyz run particle dust 1 1 1 0.5 ~ ~ ~0.5 0 0 0.3 1 1 force @s

execute at @e[tag=this,tag=110-hit-block] align xyz run particle dust 1 1 1 0.5 ~ ~0.5 ~ 0 0.3 0 1 1 force @s
execute at @e[tag=this,tag=110-hit-block] align xyz run particle dust 1 1 1 0.5 ~ ~0.5 ~1 0 0.3 0 1 1 force @s
execute at @e[tag=this,tag=110-hit-block] align xyz run particle dust 1 1 1 0.5 ~1 ~0.5 ~1 0 0.3 0 1 1 force @s
execute at @e[tag=this,tag=110-hit-block] align xyz run particle dust 1 1 1 0.5 ~1 ~0.5 ~ 0 0.3 0 1 1 force @s
kill @e[tag=this]