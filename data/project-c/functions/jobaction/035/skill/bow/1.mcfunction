execute at @s run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 0.5
execute at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 1 1
execute as @a[tag=035-dummy-bow] at @s if entity @s[team=Red] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["035-1Shot","035-1ShotR","035-first"]}
execute as @a[tag=035-dummy-bow] at @s if entity @s[team=Blue] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["035-1Shot","035-1ShotB","035-first"]}
execute as @s at @s run tp @e[tag=035-first,limit=1] ~ ~ ~ ~ ~
execute as @e[tag=035-first] at @s run function project-c:jobaction/035/skill/bow/1-
tag @e[tag=035-first] remove 035-first
