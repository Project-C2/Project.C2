#実行者     -> 108-Confuse = 1..
#実行地点   -> 実行者
scoreboard players operation @s counter = #20 counter
function project-c:general/generaterandom
execute if score @s counter matches 0 run function project-c:jobaction/108/skill/1/schedule_loop/1
scoreboard players remove @s 108-Confuse 1

scoreboard players operation @s 108-ConfuseMod = @s 108-Confuse
scoreboard players operation @s 108-ConfuseMod %= #8 counter
execute if score @s 108-ConfuseMod matches 0 run particle minecraft:enchanted_hit ~0.3 ~2 ~ 0 0 0 0 1
execute if score @s 108-ConfuseMod matches 1 run particle minecraft:enchanted_hit ~0.16 ~2 ~0.16 0 0 0 0 1
execute if score @s 108-ConfuseMod matches 2 run particle minecraft:enchanted_hit ~ ~2 ~0.3 0 0 0 0 1
execute if score @s 108-ConfuseMod matches 3 run particle minecraft:enchanted_hit ~-0.16 ~2 ~0.16 0 0 0 0 1
execute if score @s 108-ConfuseMod matches 4 run particle minecraft:enchanted_hit ~-0.3 ~2 ~0 0 0 0 0 1
execute if score @s 108-ConfuseMod matches 5 run particle minecraft:enchanted_hit ~-0.16 ~2 ~-0.16 0 0 0 0 1
execute if score @s 108-ConfuseMod matches 6 run particle minecraft:enchanted_hit ~ ~2 ~-0.3 0 0 0 0 1 
execute if score @s 108-ConfuseMod matches 7 run particle minecraft:enchanted_hit ~0.16 ~2 ~-0.16 0 0 0 0 1 
playsound minecraft:entity.chicken.death master @a ~ ~ ~ 1 2