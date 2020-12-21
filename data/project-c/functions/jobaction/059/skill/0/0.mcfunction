#スキル効果
#共通
playsound minecraft:item.totem.use master @a ~ ~ ~ 2 2
particle minecraft:firework ~ ~ ~ 1 0 1 0.5 10 force @a

scoreboard players set @s counter_1 0
scoreboard players set @s counter_2 0
scoreboard players set @s counter_3 0

scoreboard players set @s subcounter 0
scoreboard players set @s Mana

replaceitem entity @s hotbar.4 minecraft:gray_stained_glass_pane 1

#リセット
tag @s remove SkillReady1
tag @s remove SkillReady2
tag @s remove SkillReady3
scoreboard players set @s usedSkill 1