scoreboard players set @s CT3 1220

tag @s add aviate1
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1
particle cloud ~ ~ ~ 0 0 0 0.1 20

effect give @s minecraft:levitation 1 4 true
scoreboard players remove @s counter_1 1
function project-c:jobaction/008/setquartz

tag @s remove SkillReady3
scoreboard players set @s usedSkill 3