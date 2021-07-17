#スキル6


playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 1 0.6
particle minecraft:falling_dust iron_block ~ ~1 ~ 0.3 0.5 0.3 0 20 force
particle minecraft:dust 0.6 0.6 0.6 1 ~ ~1 ~ 0.3 0.5 0.3 0 40 force

summon marker 0 0 0 {Tags:["106-skill01-R-time","this"]}
scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
tag @e[tag=this] remove this



tag @s add 106_relieve_resistance