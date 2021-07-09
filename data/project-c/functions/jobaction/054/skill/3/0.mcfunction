execute if score @s stockcounter matches 3.. run scoreboard players set @s CT3 1200
execute if score @s stockcounter matches 3.. run scoreboard players set @s subcounter 1200
execute if score @s stockcounter matches 3.. run scoreboard players set @s stockcounter 3
scoreboard players remove @s stockcounter 1
execute unless score @s stockcounter matches 1.. run clear @s minecraft:green_dye
execute unless score @s stockcounter matches 1.. run item replace entity @s armor.chest with minecraft:elytra{display:{Name:'{"text":"glass wings","color":"white","italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],Unbreakable:1b,Damage:432} 1
execute unless score @s stockcounter matches 1.. run scoreboard players remove @s CT3 80
execute unless score @s stockcounter matches 1.. run scoreboard players remove @s subcounter 80
execute unless score @s stockcounter matches 1.. if score @s CT3 matches 1120..1139 run item replace entity @s hotbar.3 with minecraft:compass{display:{Name:'"CoolTime"'}} 4
execute unless score @s stockcounter matches 1.. if score @s CT3 matches 1140..1159 run item replace entity @s hotbar.3 with minecraft:compass{display:{Name:'"CoolTime"'}} 3
execute unless score @s stockcounter matches 1.. if score @s CT3 matches 1160..1179 run item replace entity @s hotbar.3 with minecraft:compass{display:{Name:'"CoolTime"'}} 2
execute unless score @s stockcounter matches 1.. if score @s CT3 matches 1180..1199 run item replace entity @s hotbar.3 with minecraft:compass{display:{Name:'"CoolTime"'}} 1

playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.5 0.5
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.5 0.5
particle minecraft:poof ~ ~ ~ 1 1 1 0.5 200 normal @a
particle minecraft:poof ~ ~ ~ 1 1 1 0.5 50 force @a
gamemode spectator @s
scoreboard players set @s counter_3 1
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3