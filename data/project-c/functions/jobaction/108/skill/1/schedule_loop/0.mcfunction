#実行者     -> 108-Confuse = 1..
#実行地点   -> 実行者
scoreboard players operation #108-Counter counter = @s counter
scoreboard players operation @s counter = #20 counter
function project-c:general/generaterandom
execute if score @s counter matches 0 run function project-c:jobaction/108/skill/1/schedule_loop/1
scoreboard players remove @s 108-Confuse 1

scoreboard players operation #108-ConfuseMod counter = @s 108-Confuse
scoreboard players operation #108-ConfuseMod counter %= #8 counter
execute if score #108-ConfuseMod counter matches 0 run particle minecraft:enchanted_hit ~0.3 ~2 ~ 0 0 0 0 1
execute if score #108-ConfuseMod counter matches 1 run particle minecraft:enchanted_hit ~0.16 ~2 ~0.16 0 0 0 0 1
execute if score #108-ConfuseMod counter matches 2 run particle minecraft:enchanted_hit ~ ~2 ~0.3 0 0 0 0 1
execute if score #108-ConfuseMod counter matches 3 run particle minecraft:enchanted_hit ~-0.16 ~2 ~0.16 0 0 0 0 1
execute if score #108-ConfuseMod counter matches 4 run particle minecraft:enchanted_hit ~-0.3 ~2 ~0 0 0 0 0 1
execute if score #108-ConfuseMod counter matches 5 run particle minecraft:enchanted_hit ~-0.16 ~2 ~-0.16 0 0 0 0 1
execute if score #108-ConfuseMod counter matches 6 run particle minecraft:enchanted_hit ~ ~2 ~-0.3 0 0 0 0 1 
execute if score #108-ConfuseMod counter matches 7 run particle minecraft:enchanted_hit ~0.16 ~2 ~-0.16 0 0 0 0 1 
scoreboard players reset #108-ConfuseMod counter
scoreboard players operation @s counter = #108-Counter counter
scoreboard players reset #108-Counter counter
playsound minecraft:entity.chicken.death master @a ~ ~ ~ 1 2