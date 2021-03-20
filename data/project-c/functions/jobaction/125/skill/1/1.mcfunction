scoreboard players set @s usedSkill 1
scoreboard players set @s CT1 960



summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["125-rr"],NoGravity:1b,Marker:1b}

summon armor_stand ~ ~8 ~ {Invisible:1b,Tags:["125-rrbeam"],NoGravity:1b,Marker:1b}
teleport @e[tag=125-rr,limit=1,sort=nearest] ^ ^1 ^1.5 ~ ~

scoreboard players operation @e[limit=1,sort=nearest,tag=125-rr] counter_1 = @s counter_5
scoreboard players operation @e[limit=1,sort=nearest,tag=125-rr] counter_1 *= #2 counter

playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 3 0
scoreboard players set @s counter_5 0
scoreboard players set @s counter_4 0

data merge block 128 67 -62 {auto:1b}
tag @s remove SkillReady1

execute as @e[tag=125-rr] at @s run function project-c:jobaction/125/skill/1/1laser