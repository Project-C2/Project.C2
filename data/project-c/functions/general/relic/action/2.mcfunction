scoreboard players add @s[scores={CT1=..1200}] CT1 1
scoreboard players add @s[scores={CT2=..1200}] CT2 1
scoreboard players add @s[scores={CT3=..1200}] CT3 1
execute if entity @s[nbt={HurtTime:9s}] run tag @s add relic2damaged
execute if entity @s[tag=relic2damaged] run effect give @s minecraft:instant_damage 1 0
execute if entity @s[tag=relic2damaged] run particle minecraft:dust 1 0 0 3 ~ ~1 ~ 0.5 0.5 0.5 0 20 force @a[distance=1..]
execute if entity @s[tag=relic2damaged] run playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 2 0
execute if entity @s[tag=relic2damaged] run tag @s remove relic2damaged
