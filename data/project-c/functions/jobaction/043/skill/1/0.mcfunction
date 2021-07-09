scoreboard players set @s CT1 940
item replace entity @s hotbar.1 with minecraft:compass{display:{Name:'{"text":"CoolTime"}'}} 13
scoreboard players set @s counter_1 12
effect give @s minecraft:levitation 1 0 true
item replace entity @s armor.chest with minecraft:elytra{display:{Name:'{"text":"vex wings"}'},Damage:432,Unbreakable:1b,HideFlags:4}
function project-c:jobaction/043/skill/1/1-attack


tag @s remove SkillReady1
scoreboard players set @s usedSkill 1