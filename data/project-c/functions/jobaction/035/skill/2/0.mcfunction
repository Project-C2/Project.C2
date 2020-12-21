scoreboard players set @s CT2 1080
#scoreboard players add @s stanTime 21
#data merge block -113 2 -122 {auto:1b}
execute if entity @s[scores={crossbow=1..}] anchored eyes positioned ^ ^ ^ as @e[type=spectral_arrow,distance=..5,tag=!Arrow] run data merge entity @s {Tags:["Arrow","035Arrow","035-2first"],life:1185s,pickup:0b,NoGravity:1b,damage:3.5d,Duration:300}

data modify entity @e[tag=035-2first,limit=1] Owner set from entity @s UUID
execute as @e[tag=035-2first] store result score @s CT1 run data get entity @s Motion[0] 300
execute as @e[tag=035-2first] store result score @s CT2 run data get entity @s Motion[1] 300
execute as @e[tag=035-2first] store result score @s CT3 run data get entity @s Motion[2] 300
execute as @e[tag=035-2first] store result entity @s Motion[0] double 0.002 run scoreboard players get @s CT1
execute as @e[tag=035-2first] store result entity @s Motion[1] double 0.002 run scoreboard players get @s CT2
execute as @e[tag=035-2first] store result entity @s Motion[2] double 0.002 run scoreboard players get @s CT3
execute as @e[tag=035-2first] run scoreboard players operation @s playerNumber = @a[tag=035,limit=1] playerNumber
tag @e[tag=035-2first] remove 035-2first


tag @s add 035-2used
data merge block 49 2 -71 {auto:1b}
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2