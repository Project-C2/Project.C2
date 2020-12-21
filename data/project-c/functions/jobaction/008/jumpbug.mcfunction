execute store result score @s counter_2 run data get entity @s Motion.[1] 100

execute if score @s counter_2 matches ..0 unless block ~ ~-3 ~ air run tag @s add jumpBug
execute if score @s counter_2 matches ..0 unless block ~ ~-2 ~ air run tag @s add jumpBug
execute if score @s counter_2 matches ..0 unless block ~ ~-1 ~ air run tag @s add jumpBug

execute if entity @s[tag=jumpBug] store result score @s counter_3 run data get entity @s FallDistance 100
execute if entity @s[tag=jumpBug] if score @s counter_3 matches 400.. run tag @s add fall400
execute if entity @s[tag=jumpBug] run scoreboard players reset @s counter_3
execute if entity @s[tag=jumpBug] run effect give @s[tag=jumpBug] minecraft:slow_falling 1 0 true
execute if entity @s[tag=jumpBug] run data merge block -25 2 -122 {auto:1b}

scoreboard players reset @s counter_2