#エンチャント選出
execute unless score @s counter_6 matches 1..2 run function project-c:jobaction/115/skill/2/enchant/1
execute if score @s counter_6 matches 1 run function project-c:jobaction/115/skill/2/enchant/2
execute if score @s counter_6 matches 2 run function project-c:jobaction/115/skill/2/enchant/3

execute unless score #115- counter matches 1..5 if entity wnkm run tellraw wnkm "115番エンチャントエラー"
execute unless score #115- counter matches 1..5 run scoreboard players set #115- counter 1
execute if score #115- counter matches 1 run function project-c:jobaction/115/skill/2/enchant/set/1
execute if score #115- counter matches 2 run function project-c:jobaction/115/skill/2/enchant/set/2
execute if score #115- counter matches 3 run function project-c:jobaction/115/skill/2/enchant/set/3
execute if score #115- counter matches 4 run function project-c:jobaction/115/skill/2/enchant/set/4
execute if score #115- counter matches 5 run function project-c:jobaction/115/skill/2/enchant/set/5

title @s times 0 12 23
title @s title ""

#エンチャントの重複回数
execute unless score @s counter_6 matches 0..3 run scoreboard players set @s counter_6 0
scoreboard players add @s counter_6 1
#HPコスト
execute store result score #115- counter run data get entity @s Health 100
scoreboard players operation #115- subcounter = @s counter_6
scoreboard players operation #115- subcounter *= #100 counter
execute unless score #115- counter > #115- subcounter run effect clear @s resistance
execute unless score #115- counter > #115- subcounter run effect give @s instant_damage 1 0
execute if score #115- counter > #115- subcounter run scoreboard players operation @s ScoreToHealth = #115- counter
execute if score #115- counter > #115- subcounter run scoreboard players operation @s ScoreToHealth -= #115- subcounter
scoreboard players reset #115-

#演出
particle minecraft:enchant ~ ~ ~ 0.2 0.2 0.2 3 250 force @a
particle minecraft:enchant ~ ~ ~ 0.2 0.2 0.2 3 1000 normal @a
playsound minecraft:block.portal.trigger master @a ~ ~ ~ 0.5 2
playsound minecraft:item.armor.equip_iron master @a ~ ~ ~ 1.5 1
playsound minecraft:item.armor.equip_iron master @a ~ ~ ~ 1.5 1
playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 1.5 2
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1.5 0.5
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1.5 0.5
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1.5 0.5

#スコア系処理とか
scoreboard players remove @s counter_8 1
scoreboard players reset @s counter_7

scoreboard players add @s CT1 20
scoreboard players set @s CT2 1180
tag @s remove SkillReady1
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
function project-c:jobaction/115/replaceitem/0
