execute as @e[distance=..8,type=fireball,tag=!103enchanted] run tag @s add 103enchant
execute as @e[tag=103enchant,type=fireball] store result score @s counter run data get entity @s ExplosionPower
execute as @e[tag=103enchant,type=fireball] store result entity @s ExplosionPower int 1 run scoreboard players add @s counter 1
execute at @e[tag=103enchant] run playsound minecraft:entity.evoker.prepare_attack master @a ~ ~0.5 ~ 2 1.2
execute at @e[tag=103enchant] run particle minecraft:witch ~ ~0.5 ~ 1 1 1 1 48 normal @a
execute at @e[tag=103enchant] run particle minecraft:witch ~ ~0.5 ~ 1 1 1 1 12 force @a
tag @e[tag=103enchant] add 103enchanted
tag @e[tag=103enchant] remove 103enchant


