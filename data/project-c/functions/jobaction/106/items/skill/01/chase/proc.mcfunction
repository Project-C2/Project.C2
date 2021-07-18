#スキル6


scoreboard players add @s counter 1

execute if score @s counter matches 20.. run scoreboard players reset @s counter_1
execute if score @s counter matches 20.. run function project-c:jobaction/106/items/skill/01/chase/deploy
execute if score @s counter matches 20.. if entity @e[tag=hit,limit=1] run function project-c:jobaction/106/items/skill/01/chase/hit


execute if entity @s[tag=end--] run teleport @s ~ ~-512 ~
execute if entity @s[tag=end--] run kill @s