#判定
#CT
scoreboard players set @s CT3 900
scoreboard players set @s usedSkill 3

#スキル効果
#共通
playsound minecraft:entity.ender_dragon.hurt master @a ~ ~ ~ 2 0.5
playsound minecraft:entity.blaze.burn master @a ~ ~ ~ 2 1
playsound minecraft:entity.blaze.burn master @a ~ ~ ~ 2 0
particle smoke ~ ~1.3 ~ 0 0 0 0.3 30 force @a
particle flame ~ ~1.3 ~ 0 0 0 0.4 20 force @a

scoreboard players set @s counter_3 1

title @s title ["",{"text":"忍","bold":true,"color":"white"}]
function project-c:hiddenjob/-078/replaceitem/0
execute if entity @s[scores={CT1=1200..}] run function project-c:hiddenjob/-078/replaceitem/1
execute if entity @s[scores={CT2=1200..}] run function project-c:hiddenjob/-078/replaceitem/2
replaceitem entity @s weapon.offhand minecraft:snowball

#リセット
tag @s remove SkillReady3