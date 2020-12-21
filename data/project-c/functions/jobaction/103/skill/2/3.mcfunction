tag @s add it
execute as @a[tag=103fireball2_p] if score @s playerNumber = @e[tag=it,limit=1,sort=nearest] playerNumber run tp @s ~ ~ ~
tag @s remove it

execute unless score @s counter_4 matches 9.. run scoreboard players add @s counter_3 1
execute if score @s counter_3 matches 2.. run function project-c:jobaction/103/skill/2/4

execute if score @s counter_4 matches 9.. run scoreboard players add @s counter_5 1
execute if score @s counter_5 matches 10.. run function project-c:jobaction/103/skill/2/5


