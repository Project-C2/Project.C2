scoreboard players set @s CT2 1000

playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 2
particle explosion ~ ~1 ~ 0 0 0 1 1 force @a
particle lava ~ ~ ~ 2.5 0.2 2.5 0 50 normal @a
execute anchored eyes positioned ^ ^ ^ as @e[type=arrow,distance=..3.5,sort=nearest,limit=1] run tag @s add 041-blaze
clear @s bow{display:{Name:"{\"text\":\"blaze bow\"}"}}

data merge block 121 2 -71 {auto:1b}
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2