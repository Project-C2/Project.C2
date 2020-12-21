scoreboard players set @s CT3 900

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 2
particle explosion ~ ~1 ~ 0 0 0 1 1 force @a
execute anchored eyes positioned ^ ^ ^ as @e[type=arrow,distance=..3.5,sort=nearest,limit=1,tag=!041-crimson] run tag @s add 041-viper
execute if entity @s[team=Red] anchored eyes positioned ^ ^ ^ as @e[type=arrow,distance=..3.5,sort=nearest,limit=1,tag=041-crimson] run data merge entity @s {damage:6.0d,Tags:["Arrow","041-viper","041-shoted","041-crimson","041-red"],life:1200}
execute if entity @s[team=Blue] anchored eyes positioned ^ ^ ^ as @e[type=arrow,distance=..3.5,sort=nearest,limit=1,tag=041-crimson] run data merge entity @s {damage:6.0d,Tags:["Arrow","041-viper","041-shoted","041-crimson","041-blue"],life:1200}

clear @s bow{display:{Name:"{\"text\":\"viper\"}"}}


data merge block 123 2 -71 {auto:1b}
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3