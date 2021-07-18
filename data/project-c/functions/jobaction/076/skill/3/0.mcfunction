#判定
#CT
scoreboard players set @s CT3 600
scoreboard players set @s usedSkill 3

#スキル効果
#共通
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 2 1
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 2 0

particle flash ~ ~1.52 ~ 0 0 0 0 3 force @a
particle end_rod ~ ~1.52 ~ 1.2 0.7 1.2 0 20 force @a
function project-c:jobaction/076/skill/3/1
effect give @s minecraft:slowness 8 2 true
effect give @s minecraft:weakness 8 4 true

scoreboard players set @s counter_3 160

#リセット
tag @s remove SkillReady3