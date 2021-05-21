
execute if entity @s[distance=..7] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=villager,dx=0,limit=1] positioned ~0.5 ~0.5 ~0.5 run function project-c:general/talk-villager/villager-check

execute if entity @s[distance=..7] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[type=villager,dx=0,limit=1] positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #project-c:wancomatter/like_air positioned ^ ^ ^0.5 run function project-c:general/talk-villager/eyes-check

