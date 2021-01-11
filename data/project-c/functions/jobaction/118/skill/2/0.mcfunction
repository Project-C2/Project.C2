tag @a[scores={jobNumber=43}] add 043
execute if entity @s[team=Red] unless entity @a[team=Red,distance=..6,tag=!043,sort=nearest,limit=1,gamemode=!spectator] run function project-c:jobaction/043/skill/2/0-fail
execute if entity @s[team=Blue] unless entity @a[team=Blue,distance=..6,tag=!043,sort=nearest,limit=1,gamemode=!spectator] run function project-c:jobaction/043/skill/2/0-fail
execute if entity @s[team=Red] if entity @a[team=Red,distance=..6,tag=!043,sort=nearest,limit=1,gamemode=!spectator] run function project-c:jobaction/043/skill/2/0-success
execute if entity @s[team=Blue] if entity @a[team=Blue,distance=..6,tag=!043,sort=nearest,limit=1,gamemode=!spectator] run function project-c:jobaction/043/skill/2/0-success
tag @a[tag=043] remove 043