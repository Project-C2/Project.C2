scoreboard players operation @s counter = @s stockcounter
scoreboard players set @s stockcounter 20
scoreboard players operation @s counter *= @s stockcounter
scoreboard players set @s stockcounter 0
scoreboard players set @s counter_5 0
scoreboard players set @s CT3 1080
scoreboard players operation @s CT3 -= @s counter
execute if score @s CT3 matches 980 run item replace entity @s hotbar.3 with minecraft:compass{display:{Name:'"CoolTime"'}} 11
execute if score @s CT3 matches 960 run item replace entity @s hotbar.3 with minecraft:compass{display:{Name:'"CoolTime"'}} 12
execute if score @s CT3 matches 940 run item replace entity @s hotbar.3 with minecraft:compass{display:{Name:'"CoolTime"'}} 13
execute if score @s CT3 matches 920 run item replace entity @s hotbar.3 with minecraft:compass{display:{Name:'"CoolTime"'}} 14
execute if score @s CT3 matches 880 run item replace entity @s hotbar.3 with minecraft:compass{display:{Name:'"CoolTime"'}} 16
execute if score @s CT3 matches 860 run item replace entity @s hotbar.3 with minecraft:compass{display:{Name:'"CoolTime"'}} 17
execute if score @s CT3 matches 840 run item replace entity @s hotbar.3 with minecraft:compass{display:{Name:'"CoolTime"'}} 18
execute if score @s CT3 matches 820 run item replace entity @s hotbar.3 with minecraft:compass{display:{Name:'"CoolTime"'}} 19
execute if score @s CT3 matches 780 run item replace entity @s hotbar.3 with minecraft:compass{display:{Name:'"CoolTime"'}} 21
execute if score @s CT3 matches 760 run item replace entity @s hotbar.3 with minecraft:compass{display:{Name:'"CoolTime"'}} 22
execute if score @s CT3 matches 740 run item replace entity @s hotbar.3 with minecraft:compass{display:{Name:'"CoolTime"'}} 23
execute if score @s CT3 matches 720 run item replace entity @s hotbar.3 with minecraft:compass{display:{Name:'"CoolTime"'}} 24
playsound minecraft:block.anvil.use master @a ~ ~ ~ 2 0.8
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1 1.5
function project-c:jobaction/092/replaceitem/0
function project-c:jobaction/092/replaceitem/4


tag @s remove SkillReady3
scoreboard players set @s usedSkill 3