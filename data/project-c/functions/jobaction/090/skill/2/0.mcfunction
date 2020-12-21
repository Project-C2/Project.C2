#判定
#CT
scoreboard players set @s usedSkill 2
scoreboard players set @s CT2 800

#スキル効果
#共通
particle minecraft:dragon_breath ~ ~1 ~ 0 0 0 2 300
particle minecraft:flame ~ ~1 ~ 0 0 0 1 200

playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 3 1
playsound minecraft:entity.ender_dragon.hurt master @a ~ ~ ~ 3 1
effect give @s minecraft:resistance 15 0 false
effect give @s minecraft:speed 15 0 false
effect give @s minecraft:haste 15 0 false
effect give @s minecraft:absorption 15 0 false
effect give @s minecraft:glowing 15 0 false
effect give @s minecraft:night_vision 15 0 false
effect give @s minecraft:fire_resistance 15 0 false
effect give @s minecraft:jump_boost 15 0 false
function project-c:jobaction/090/skill/2/1
#リセット
tag @s remove SkillReady2