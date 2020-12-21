#CT
scoreboard players set @s CT3 0

playsound minecraft:entity.ghast.scream master @a ~ ~ ~ 3 1.3

particle note ~ ~1 ~ 2 0.7 2 0.3 90

execute as @a[team=Red] at @s run effect give @a[team=Blue,gamemode=!spectator,limit=1] glowing 20 0 
execute as @a[team=Blue] at @s run effect give @a[team=Red,gamemode=!spectator,limit=1] glowing 20 0 

scoreboard players add @s Mana 75

#スキル効果
#共通

#リセット
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3