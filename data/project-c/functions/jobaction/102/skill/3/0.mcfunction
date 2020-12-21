scoreboard players set @s CT3 0
scoreboard players set @s counter_4 1020
execute if score @s CT2 matches 1201.. run scoreboard players set @s CT2 1200
scoreboard players remove @s CT2 200

playsound minecraft:entity.player.levelup master @a ~ ~ ~ 4 0.5
effect give @s glowing 3 0
effect give @s slowness 3 5
scoreboard players set @s counter_5 36
function project-c:jobaction/102/skill/3/particle
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0 0 0 0.4 240 normal @a
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0 0 0 0.4 60 force @a
particle minecraft:firework ~ ~1 ~ 1 1 1 0.4 240 normal @a
particle minecraft:firework ~ ~1 ~ 1 1 1 0.4 60 force @a


clear @s player_head{display:{Name:'{"text":"1002J","color":"dark_red","bold":true,"underlined":true,"italic":false}'}}
tag @s remove SkillReady2
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3

