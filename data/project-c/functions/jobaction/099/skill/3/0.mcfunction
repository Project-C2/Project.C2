scoreboard players set @s CT3 1180
item replace entity @s hotbar.3 with minecraft:compass{display:{Name:'"CoolTime"'}} 1

playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 1 0.8
particle minecraft:cloud ~ ~1 ~ 0.5 0.5 0.5 0.5 50 force @a


scoreboard players add @s counter_4 1
execute if score @s counter_4 > @s counter_3 run scoreboard players set @s counter_4 1


function project-c:jobaction/099/skill/3/item_shift


tag @s remove SkillReady3
scoreboard players set @s usedSkill 3

