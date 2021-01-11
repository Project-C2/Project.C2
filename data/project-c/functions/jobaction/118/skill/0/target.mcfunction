
execute if entity @s[distance=..80] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=Battle,tag=!118_0_anchor,dx=0,limit=1] at @e[tag=Battle,tag=!118_0_anchor,dx=0,limit=1] run function project-c:jobaction/118/skill/0/hit

execute if entity @s[distance=..80] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[tag=Battle,tag=!118_0_anchor,dx=0,limit=1] positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #project-c:wancomatter/like_air positioned ^ ^ ^0.5 run function project-c:jobaction/118/skill/0/target

