execute if entity @s[team=RedDummy] positioned ~-0.5 ~ ~-0.5 run tag @e[tag=Battle,team=!Red,dx=0,dy=1,dz=0] add hit
execute if entity @s[team=BlueDummy] positioned ~-0.5 ~ ~-0.5 run tag @e[tag=Battle,team=!Blue,dx=0,dy=1,dz=0] add hit
execute if entity @e[tag=hit,limit=1] run function project-c:jobaction/051/skill/2/hit

