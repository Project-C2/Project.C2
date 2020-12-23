#スキル26
execute if score @s counter_9 matches 1.. run scoreboard players remove @s counter_9 1
execute if entity @s[gamemode=!spectator] run particle minecraft:cloud ~ ~ ~ 0.2 0.5 0.2 0.05 1 force


execute if score @s deathCount matches 1.. run scoreboard players set @s counter_9 0
execute if score @s counter_9 matches 0 run effect clear @s[nbt={ActiveEffects:[{Id:1b}]}] minecraft:speed
execute if score @s counter_9 matches 0 run scoreboard players reset @s counter_9