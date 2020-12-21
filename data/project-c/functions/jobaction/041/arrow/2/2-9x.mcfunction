playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 2 1.6
execute if score @s counter matches 19.. run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 2 1.6
execute if score @s counter matches 46.. run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 2 1.6
particle minecraft:flame ~ ~ ~ 0 0 0 0.2 210 normal @a
particle minecraft:flame ~ ~ ~ 0 0 0 0.2 70 force @a
execute if score @s counter matches 19.. run particle minecraft:flame ~ ~ ~ 0 0 0 0.3 210 normal @a
execute if score @s counter matches 19.. run particle minecraft:flame ~ ~ ~ 0 0 0 0.3 70 force @a
execute if score @s counter matches 46.. run particle minecraft:flame ~ ~ ~ 0 0 0 0.4 420 normal @a
execute if score @s counter matches 46.. run particle minecraft:flame ~ ~ ~ 0 0 0 0.4 140 force @a
particle minecraft:explosion ~ ~ ~ 0.2 0.2 0.2 1 10 normal @a
execute if score @s counter matches 19.. run particle minecraft:explosion ~ ~ ~ 0.6 0.6 0.6 1 30 normal @a
execute if score @s counter matches 46.. run particle minecraft:explosion ~ ~ ~ 1.2 1.2 1.2 1 50 normal @a
execute if entity @s[tag=041-inferno-q] run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 0.5
execute if entity @s[tag=041-inferno-q] if score @s counter matches 19.. run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 0.5
execute if entity @s[tag=041-inferno-q] if score @s counter matches 46.. run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 0.5