#スキル使用処理(CT配置及びtag削除一環処理)

function project-c:jobaction/106/items/support/skill_activate
scoreboard players set #106_CT-M counter 1200
scoreboard players operation #106_CT-M counter -= #106_CT counter
execute if entity @s[tag=skill1_use] run scoreboard players operation @s CT1 = #106_CT-M counter
execute if entity @s[tag=skill2_use] run scoreboard players operation @s CT2 = #106_CT-M counter
execute if entity @s[tag=skill3_use] run scoreboard players operation @s CT3 = #106_CT-M counter


scoreboard players reset #106_CT-M counter
scoreboard players reset #106_CT counter

execute if entity @s[tag=skill1_use] run replaceitem entity @s hotbar.1 air
execute if entity @s[tag=skill2_use] run replaceitem entity @s hotbar.2 air
execute if entity @s[tag=skill3_use] run replaceitem entity @s hotbar.3 air

execute if entity @s[tag=skill1_use] run tag @s remove SkillReady1
execute if entity @s[tag=skill2_use] run tag @s remove SkillReady2
execute if entity @s[tag=skill3_use] run tag @s remove SkillReady3

execute if entity @s[tag=106-support2-use--] run scoreboard players add @s CT1 20
execute if entity @s[tag=106-support2-use--] run scoreboard players add @s CT2 20
execute if entity @s[tag=106-support2-use--] run scoreboard players add @s CT3 20
execute if entity @s[tag=106-support2-use--] run function project-c:jobaction/106/items/skill/setup

#clear @s minecraft:compass{display:{Name:'"CoolTime"'}}
function project-c:general/cooltimecounter


execute if entity @s[tag=skill1_use] run tag @s remove skill1_use
execute if entity @s[tag=skill2_use] run tag @s remove skill2_use
execute if entity @s[tag=skill3_use] run tag @s remove skill3_use
execute if entity @s[tag=106-support2-use--] run tag @s remove 106-support2-use--