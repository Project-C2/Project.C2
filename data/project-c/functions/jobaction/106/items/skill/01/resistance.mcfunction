#スキル6


playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 1 0.6
particle minecraft:falling_dust iron_block ~ ~1 ~ 0.3 0.5 0.3 0 20 force
particle minecraft:dust 0.6 0.6 0.6 1 ~ ~1 ~ 0.3 0.5 0.3 0 40 force
scoreboard players set @s subcounter 500
effect give @s resistance 10000 3 true



tag @s add 106_relieve_resistance