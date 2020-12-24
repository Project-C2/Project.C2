#スキル26

execute if entity @s[scores={sneak=1..}] run scoreboard players add @s Mana 1
execute if entity @s[scores={sneak=0,Mana=1..}] run scoreboard players reset @s Mana


execute if entity @s[scores={sneak=1..},tag=!106_dash_check] run tag @s add 106_dash_check

execute if entity @s[scores={sneak=1..,Mana=..19},tag=!106_dash_lv1] run playsound minecraft:block.lever.click master @a ~ ~ ~ 1 1
execute if entity @s[scores={sneak=1..,Mana=..19}] run tag @s add 106_dash_lv1

execute if entity @s[scores={sneak=1..,Mana=20..39},tag=!106_dash_lv2] run playsound minecraft:block.lever.click master @a ~ ~ ~ 1 1
execute if entity @s[scores={sneak=1..,Mana=20..39}] run tag @s add 106_dash_lv2

execute if entity @s[scores={sneak=1..,Mana=40..},tag=!106_dash_lv3] run playsound minecraft:block.lever.click master @a ~ ~ ~ 1 1
execute if entity @s[scores={sneak=1..,Mana=40..}] run tag @s add 106_dash_lv3

execute if entity @s[scores={sneak=0},tag=106_dash_check] run function project-c:jobaction/106/items/skill/09/use
execute if entity @s[scores={sneak=0},tag=106_dash_check] run tag @s remove 106_dash_check