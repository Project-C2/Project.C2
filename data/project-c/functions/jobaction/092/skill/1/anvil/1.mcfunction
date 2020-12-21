execute unless score @s counter_2 matches 3.. run scoreboard players add @s counter_2 1
execute if score @s counter_2 matches 2 run effect clear @s resistance

execute if score @s counter_2 matches 3.. if data entity @s {OnGround:1b} run function project-c:jobaction/092/skill/1/anvil/2

