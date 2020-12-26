execute unless entity @s[scores={bow=..0,crossbow=..0}] anchored eyes positioned ^ ^ ^ run tag @e[type=arrow,tag=!110arrow,limit=1,sort=nearest,distance=..4] add 110
execute if entity @e[tag=110,limit=1] as @e[tag=110] run function project-c:jobaction/110/bless/2.active


