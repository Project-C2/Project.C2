scoreboard players set @s CT2 1120
replaceitem entity @s hotbar.2 minecraft:compass{display:{Name:'"CoolTime"'}} 4

playsound minecraft:block.lava.extinguish master @s ~ ~ ~ 1 1
title @s actionbar {"text":"スケルトンが召喚されていません","color":"#ff0000","underlined":true,"bold":true}

tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
