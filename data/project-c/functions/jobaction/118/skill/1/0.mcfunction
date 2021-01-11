scoreboard players set @s CT1 940
replaceitem entity @s hotbar.1 minecraft:compass{display:{Name:"{\"text\":\"CoolTime\"}"}} 13
scoreboard players set @s counter_1 12
effect give @s minecraft:levitation 1 0 true
replaceitem entity @s armor.chest minecraft:elytra{display:{Name:"{\"text\":\"vex wings\"}"},Damage:432s,Unbreakable:1b,HideFlags:4}
function project-c:jobaction/043/skill/1/1-attack


tag @s remove SkillReady1
scoreboard players set @s usedSkill 1