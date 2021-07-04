execute if score #Clock counter matches 1 run scoreboard players remove @s CT1 1
execute if score #Clock counter matches 1 run scoreboard players remove @s CT2 1
execute if score #Clock counter matches 1 run scoreboard players remove @s CT3 1

execute if entity @s[scores={CT1=..1180},tag=relic27ct1,tag=!relic27ct1-2] run tag @s add relic27ct1_2
execute if entity @s[scores={CT1=..1180},tag=relic27ct1,tag=relic27ct1_2] run tag @s remove relic27ct1
execute if entity @s[scores={CT1=1199..},tag=!relic27ct1,tag=relic27ct1_2] run tag @s remove relic27ct1_2


execute if entity @s[scores={CT1=..1180},tag=!relic27ct1,tag=!relic27ct1_2] run tag @s add relic27ct1
execute if entity @s[scores={CT1=..1180},tag=relic27ct1] run item replace entity @s hotbar.1 with minecraft:compass{display:{Name:'"CoolTime"'}} 1
execute if entity @s[scores={CT1=..1180},tag=relic27ct1] run scoreboard players set @s CT1 1191

execute if entity @s[scores={CT2=..1180},tag=relic27ct2,tag=!relic27ct2-2] run tag @s add relic27ct2_2
execute if entity @s[scores={CT2=..1180},tag=relic27ct2,tag=relic27ct2_2] run tag @s remove relic27ct2
execute if entity @s[scores={CT2=1181..},tag=!relic27ct2,tag=relic27ct2_2] run tag @s remove relic27ct2_2


execute if entity @s[scores={CT2=..1180},tag=!relic27ct2,tag=!relic27ct2_2] run tag @s add relic27ct2
execute if entity @s[scores={CT2=..1180},tag=relic27ct2] run item replace entity @s hotbar.2 with minecraft:compass{display:{Name:'"CoolTime"'}} 1
execute if entity @s[scores={CT2=..1180},tag=relic27ct2] run scoreboard players set @s CT2 1191

execute if entity @s[scores={CT3=..1180},tag=relic27ct3,tag=!relic27ct3-2] run tag @s add relic27ct3_2
execute if entity @s[scores={CT3=..1180},tag=relic27ct3,tag=relic27ct3_2] run tag @s remove relic27ct3
execute if entity @s[scores={CT3=1181..},tag=!relic27ct3,tag=relic27ct3_2] run tag @s remove relic27ct3_2

execute if entity @s[scores={CT3=..1180},tag=!relic27ct3,tag=!relic27ct3_2] run tag @s add relic27ct3
execute if entity @s[scores={CT3=..1180},tag=relic27ct3] run item replace entity @s hotbar.3 with minecraft:compass{display:{Name:'"CoolTime"'}} 1
execute if entity @s[scores={CT3=..1180},tag=relic27ct3] run scoreboard players set @s CT3 1191
