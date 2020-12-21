tag @s add 035-kill
execute at @s as @a[scores={jobNumber=35}] if score @s playerNumber = @e[tag=035-kill,limit=1,sort=nearest] playerNumber run tag @s add 035-dummy-bow
execute if entity @s[tag=035-1Bow] run function project-c:jobaction/035/skill/bow/1
execute if entity @s[tag=035-animaBow] run function project-c:jobaction/035/skill/bow/3
tag @e[tag=035-dummy-bow] remove 035-dummy-bow
kill @e[tag=035-kill]