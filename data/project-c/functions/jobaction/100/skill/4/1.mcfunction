execute unless score @s Mana matches 3.. run scoreboard players add @s Mana 1
execute if score @s Mana matches 2 run effect clear @s resistance

execute if score @s Mana matches 3.. if data entity @s {OnGround:1b} run function project-c:jobaction/100/skill/4/2

