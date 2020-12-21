scoreboard players add @s counter 1
tp @s ~ ~ ~ ~3 ~
execute positioned ~ ~0.1 ~ run particle minecraft:dust 0.67 0.67 0.67 4 ^7.5 ^ ^ 0 0 0 1 1 normal @a
execute positioned ~ ~0.1 ~ run particle minecraft:dust 0.67 0.67 0.67 4 ^-7.5 ^ ^ 0 0 0 1 1 normal @a
execute positioned ~ ~0.1 ~ run particle minecraft:dust 0.67 0.67 0.67 4 ^ ^ ^7.5 0 0 0 1 1 normal @a
execute positioned ~ ~0.1 ~ run particle minecraft:dust 0.67 0.67 0.67 4 ^ ^ ^-7.5 0 0 0 1 1 normal @a
execute positioned ~ ~0.4 ~ run particle minecraft:dust 0.67 0.67 0.67 2 ^7.5 ^ ^ 0 0 0 1 1 force @a
execute positioned ~ ~0.4 ~ run particle minecraft:dust 0.67 0.67 0.67 2 ^-7.5 ^ ^ 0 0 0 1 1 force @a
execute positioned ~ ~0.4 ~ run particle minecraft:dust 0.67 0.67 0.67 2 ^ ^ ^7.5 0 0 0 1 1 force @a
execute positioned ~ ~0.4 ~ run particle minecraft:dust 0.67 0.67 0.67 2 ^ ^ ^-7.5 0 0 0 1 1 force @a
execute if entity @s[team=RedDummy] run effect give @e[tag=Battle,team=Red,distance=..7] minecraft:resistance 1 2
execute if entity @s[team=BlueDummy] run effect give @e[tag=Battle,team=Blue,distance=..7] minecraft:resistance 1 2
execute if entity @s[team=RedDummy] if entity @e[tag=Battle,team=Red,distance=..7,nbt={HurtTime:10s}] run scoreboard players add @s counter 20
execute if entity @s[team=BlueDummy] if entity @e[tag=Battle,team=Blue,distance=..7,nbt={HurtTime:10s}] run scoreboard players add @s counter 20
execute if entity @s[team=RedDummy] if entity @e[tag=Battle,team=Red,distance=..7,nbt={HurtTime:10s}] as @e[distance=..7.5,tag=023-7-20s] if score @s playerNumber = @e[limit=1,tag=023-7-20,distance=..0.01,sort=nearest] playerNumber run scoreboard players add @s subcounter 20
execute if entity @s[team=BlueDummy] if entity @e[tag=Battle,team=Blue,distance=..7,nbt={HurtTime:10s}] as @e[distance=..7.5,tag=023-7-20s] if score @s playerNumber = @e[limit=1,tag=023-7-20,distance=..0.01,sort=nearest] playerNumber run scoreboard players add @s subcounter 20
execute if entity @s[team=RedDummy] if entity @e[tag=Battle,team=Red,distance=..7,nbt={HurtTime:10s}] run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1
execute if entity @s[team=BlueDummy] if entity @e[tag=Battle,team=Blue,distance=..7,nbt={HurtTime:10s}] run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1
execute if entity @s[team=RedDummy] if entity @e[tag=Battle,team=Red,distance=..7,nbt={HurtTime:10s}] run particle minecraft:squid_ink ~ ~1.7775 ~ 1 1 1 1 50
execute if entity @s[team=BlueDummy] if entity @e[tag=Battle,team=Blue,distance=..7,nbt={HurtTime:10s}] run particle minecraft:squid_ink ~ ~1.7775 ~ 1 1 1 1 50

execute if entity @s[scores={counter=400..}] run particle block glass ~ ~5 ~ 5 3 5 4 1500 normal @a
execute if entity @s[scores={counter=400..}] run particle minecraft:cloud ~ ~ ~ 0 0 0 1 400 normal @a
execute if entity @s[scores={counter=400..}] run particle minecraft:cloud ~ ~ ~ 0 0 0 1 100 force @a
execute if entity @s[scores={counter=400..}] run playsound minecraft:block.glass.break master @a ~ ~ ~ 2 0.5
execute if entity @s[scores={counter=400..}] run playsound minecraft:block.glass.break master @a ~ ~ ~ 2 0.5
execute if entity @s[scores={counter=400..}] run playsound minecraft:block.glass.break master @a ~ ~ ~ 2 0.5
execute if entity @s[scores={counter=400..}] run playsound minecraft:block.glass.break master @a ~ ~ ~ 2 0.5

kill @s[scores={counter=400..}]