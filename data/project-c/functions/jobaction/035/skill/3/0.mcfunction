tag @s add 035-3A
scoreboard players set @s CT3 1200
scoreboard players reset @s useCarrotStick
scoreboard players remove @s counter_2 9
function project-c:jobaction/035/setarrow


execute anchored eyes positioned ^-0.2 ^ ^1 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.02 50 force @a
execute anchored eyes positioned ^-0.2 ^ ^1 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.02 150 normal @a
execute anchored eyes positioned ^-0.2 ^ ^1 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 2 0.8
execute anchored eyes positioned ^-0.2 ^ ^1 run summon minecraft:armor_stand ~ ~ ~ {Tags:["035-first","035-animaBow"],Invisible:1b,NoGravity:1b,Marker:1b}
execute rotated as @s anchored eyes positioned ^-0.2 ^ ^1 run tp @e[type=armor_stand,tag=035-first] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=035-first,limit=1] playerNumber = @s playerNumber
data merge block 51 2 -71 {auto:1b}


tag @e[tag=035-first] remove 035-first
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3