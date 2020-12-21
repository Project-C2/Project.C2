execute if entity @s[scores={damageTaken=140..},nbt={HurtTime:9s}] run tag @s add relic23_active
execute if entity @s[tag=relic23_active] run effect give @s minecraft:instant_health 1 1
execute if entity @s[tag=relic23_active] run effect give @s minecraft:strength 5 0
execute if entity @s[tag=relic23_active] run effect give @s minecraft:resistance 10 1
execute if entity @s[tag=relic23_active] run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 2 2
execute if entity @s[tag=relic23_active] run particle minecraft:witch ~ ~0.5 ~ 0.8 0.8 0.8 0.2 60 force @a
execute if entity @s[tag=relic23_active] run tag @s remove relic23_active
execute if entity @s[nbt={HurtTime:9s}] run scoreboard players set @s damageTaken 0
