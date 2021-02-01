#CT
scoreboard players set @s CT2 1000
tag @s[scores={counter=20..}] add 052-6
scoreboard players remove @a[tag=052-6] counter 20

#スキル効果
tag @s add 052-4
execute as @s[team=Red,tag=!052-6] at @s run tag @e[team=Blue,distance=..5,limit=1,nbt={HurtTime:10s},tag=Battle] add 052-5
execute as @s[team=Blue,tag=!052-6] at @s run tag @e[team=Red,distance=..5,limit=1,nbt={HurtTime:10s},tag=Battle] add 052-5
execute as @s[team=Red,tag=052-6] at @s run tag @e[team=Blue,distance=..5,tag=Battle] add 052-5
execute as @s[team=Blue,tag=052-6] at @s run tag @e[team=Red,distance=..5,tag=Battle] add 052-5
tag @e[tag=052-2,gamemode=!adventure] remove 052-2
execute if entity @e[tag=052-5] run schedule function project-c:jobaction/052/skill/2/1 10t

#演出
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 2
execute if entity @s[tag=052-6] run playsound minecraft:entity.blaze.ambient master @a ~ ~ ~ 1 2

#リセット
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2