#CT
scoreboard players set @s CT3 0

playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 1
particle minecraft:explosion ~ ~1 ~ 0 0 0 1 1
particle minecraft:firework ~ ~1 ~ 0.1 0.1 0.1 1 30 force
#スキル効果
#共通
function project-c:jobaction/063/skill/3/1
function project-c:jobaction/063/skill/3/2
function project-c:jobaction/063/skill/3/3
function project-c:jobaction/063/skill/3/4

#リセット
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3