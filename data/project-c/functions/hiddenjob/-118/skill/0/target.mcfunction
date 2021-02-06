
execute if entity @s[distance=..20] positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[tag=Battle,tag=!-118-anchor,dx=0,limit=1] at @a[tag=Battle,tag=!-118-anchor,dx=0,limit=1] run function project-c:hiddenjob/-118/skill/0/hit

execute if entity @s[distance=..20] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @a[tag=Battle,tag=!-118-anchor,dx=0,limit=1] positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #project-c:wancomatter/like_air positioned ^ ^ ^0.5 run function project-c:hiddenjob/-118/skill/0/target

