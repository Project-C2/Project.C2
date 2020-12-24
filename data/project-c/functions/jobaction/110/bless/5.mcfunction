scoreboard players add @s relicCount 1
execute if score @s relicCount matches 1 run effect give @s minecraft:regeneration 10 1 true
execute if score @s relicCount matches 125.. run scoreboard players set @s relicCount 0


