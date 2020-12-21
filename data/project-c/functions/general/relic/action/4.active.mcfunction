particle minecraft:witch ~ ~0.5 ~ 0.8 0.8 0.8 0.02 1 force @a
effect give @s minecraft:absorption 1 1 true
effect clear @s minecraft:slowness
effect clear @s minecraft:weakness
effect clear @s minecraft:hunger
effect clear @s minecraft:mining_fatigue
effect clear @s minecraft:poison
effect clear @s minecraft:nausea
effect clear @s minecraft:blindness
effect clear @s minecraft:wither

execute if entity @s[nbt={HurtTime:9s}] run tag @s add relic4damaged
execute if entity @s[tag=relic4damaged] run scoreboard players set @s relicCount 0
execute if entity @s[tag=relic4damaged] run effect clear @s minecraft:absorption
execute if entity @s[tag=relic4damaged] run particle minecraft:dragon_breath ~ ~1 ~ 0 0 0 0.4 200 normal @a
execute if entity @s[tag=relic4damaged] run playsound minecraft:item.totem.use master @a ~ ~ ~ 2 0.5
execute if entity @s[tag=relic4damaged] run particle minecraft:dragon_breath ~ ~1 ~ 0 0 0 1 200 normal @a
execute if entity @s[tag=relic4damaged] run tag @s remove relic4damaged
execute if score #Clock counter matches 1 run scoreboard players remove @s CT1 1
execute if score #Clock counter matches 1 run scoreboard players remove @s CT2 1
execute if score #Clock counter matches 1 run scoreboard players remove @s CT3 1
