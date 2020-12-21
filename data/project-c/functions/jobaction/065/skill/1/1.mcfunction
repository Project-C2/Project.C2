effect clear @s[scores={counter_1=1}] resistance
scoreboard players remove @s counter_1 1
execute at @s[nbt={HurtTime:9s}] run particle minecraft:enchanted_hit ^1 ^ ^ ^ ^ ^10000000 0.0000005 0
execute at @s[nbt={HurtTime:9s}] run particle minecraft:enchanted_hit ^-1 ^ ^ ^ ^ ^10000000 0.0000005 0
execute at @s[nbt={HurtTime:9s}] run particle minecraft:enchanted_hit ^ ^1 ^ ^ ^ ^10000000 0.0000005 0
execute at @s[nbt={HurtTime:9s}] run particle minecraft:enchanted_hit ^ ^-1 ^ ^ ^ ^10000000 0.0000005 0
execute at @s[nbt={HurtTime:9s}] run particle minecraft:enchanted_hit ^1 ^1 ^ ^ ^ ^10000000 0.0000005 0
execute at @s[nbt={HurtTime:9s}] run particle minecraft:enchanted_hit ^-1 ^-1 ^ ^ ^ ^10000000 0.0000005 0
execute at @s[nbt={HurtTime:9s}] run particle minecraft:enchanted_hit ^-1 ^1 ^ ^ ^ ^10000000 0.0000005 0
execute at @s[nbt={HurtTime:9s}] run particle minecraft:enchanted_hit ^1 ^-1 ^ ^ ^ ^10000000 0.0000005 0
execute at @s[nbt={HurtTime:9s}] run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 0.75
execute at @s[nbt={HurtTime:9s}] run playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 1 1.75
execute at @s[nbt={HurtTime:9s}] run particle minecraft:dust 0 0.2 100 2 ~ ~1 ~ 0.25 0.25 0.25 0 10
execute at @s[nbt={HurtTime:9s},team=Red] if block ^ ^ ^1 air run teleport @s ^ ^ ^1
execute at @s[nbt={HurtTime:9s},team=Blue] if block ^ ^ ^1 air run teleport @s ^ ^ ^1
execute at @s[nbt={HurtTime:9s},team=Red] at @s run effect give @e[distance=..2,team=Blue] minecraft:instant_damage 1
execute at @s[nbt={HurtTime:9s},team=Blue] at @s run effect give @e[distance=..2,team=Red] minecraft:instant_damage 1
execute at @s[nbt={HurtTime:9s},team=Red] at @s run effect give @e[distance=..2,team=Blue] minecraft:levitation 1 3
execute at @s[nbt={HurtTime:9s},team=Blue] at @s run effect give @e[distance=..2,team=Red] minecraft:levitation 1 3
execute at @s[nbt={HurtTime:9s}] run particle minecraft:dust 0 0.2 100 2 ~ ~1 ~ 0.25 0.25 0.25 0 10
execute at @s[nbt={HurtTime:9s},team=Red] if block ^ ^ ^1 air run teleport @s ^ ^ ^1
execute at @s[nbt={HurtTime:9s},team=Blue] if block ^ ^ ^1 air run teleport @s ^ ^ ^1
execute at @s[nbt={HurtTime:9s},team=Red] at @s run effect give @e[distance=..2,team=Blue] minecraft:instant_damage 1
execute at @s[nbt={HurtTime:9s},team=Blue] at @s run effect give @e[distance=..2,team=Red] minecraft:instant_damage 1
execute at @s[nbt={HurtTime:9s},team=Red] at @s run effect give @e[distance=..2,team=Blue] minecraft:levitation 1 3
execute at @s[nbt={HurtTime:9s},team=Blue] at @s run effect give @e[distance=..2,team=Red] minecraft:levitation 1 3
execute at @s[nbt={HurtTime:9s}] run particle minecraft:dust 0 0.2 100 2 ~ ~1 ~ 0.25 0.25 0.25 0 10
execute at @s[nbt={HurtTime:9s},team=Red] if block ^ ^ ^1 air run teleport @s ^ ^ ^1
execute at @s[nbt={HurtTime:9s},team=Blue] if block ^ ^ ^1 air run teleport @s ^ ^ ^1
execute at @s[nbt={HurtTime:9s},team=Red] at @s run effect give @e[distance=..2,team=Blue] minecraft:instant_damage 1
execute at @s[nbt={HurtTime:9s},team=Blue] at @s run effect give @e[distance=..2,team=Red] minecraft:instant_damage 1
execute at @s[nbt={HurtTime:9s},team=Red] at @s run effect give @e[distance=..2,team=Blue] minecraft:levitation 1 3
execute at @s[nbt={HurtTime:9s},team=Blue] at @s run effect give @e[distance=..2,team=Red] minecraft:levitation 1 3
execute at @s[nbt={HurtTime:9s}] run particle minecraft:dust 0 0.2 100 2 ~ ~1 ~ 0.25 0.25 0.25 0 10
execute at @s[nbt={HurtTime:9s},team=Red] if block ^ ^ ^1 air run teleport @s ^ ^ ^1
execute at @s[nbt={HurtTime:9s},team=Blue] if block ^ ^ ^1 air run teleport @s ^ ^ ^1
execute at @s[nbt={HurtTime:9s},team=Red] at @s run effect give @e[distance=..2,team=Blue] minecraft:instant_damage 1
execute at @s[nbt={HurtTime:9s},team=Blue] at @s run effect give @e[distance=..2,team=Red] minecraft:instant_damage 1
execute at @s[nbt={HurtTime:9s},team=Red] at @s run effect give @e[distance=..2,team=Blue] minecraft:levitation 1 3
execute at @s[nbt={HurtTime:9s},team=Blue] at @s run effect give @e[distance=..2,team=Red] minecraft:levitation 1 3
execute at @s[nbt={HurtTime:9s}] run particle minecraft:dust 0 0.2 100 2 ~ ~1 ~ 0.25 0.25 0.25 0 10
execute at @s[nbt={HurtTime:9s},team=Red] if block ^ ^ ^1 air run teleport @s ^ ^ ^1
execute at @s[nbt={HurtTime:9s},team=Blue] if block ^ ^ ^1 air run teleport @s ^ ^ ^1
execute at @s[nbt={HurtTime:9s},team=Red] at @s run effect give @e[distance=..2,team=Blue] minecraft:instant_damage 1
execute at @s[nbt={HurtTime:9s},team=Blue] at @s run effect give @e[distance=..2,team=Red] minecraft:instant_damage 1
execute at @s[nbt={HurtTime:9s},team=Red] at @s run effect give @e[distance=..2,team=Blue] minecraft:levitation 1 3
execute at @s[nbt={HurtTime:9s},team=Blue] at @s run effect give @e[distance=..2,team=Red] minecraft:levitation 1 3
execute at @s[nbt={HurtTime:9s}] run particle minecraft:dust 0 0.2 100 2 ~ ~1 ~ 0.25 0.25 0.25 0 10
execute at @s[nbt={HurtTime:9s},team=Red] if block ^ ^ ^1 air run teleport @s ^ ^ ^1
execute at @s[nbt={HurtTime:9s},team=Blue] if block ^ ^ ^1 air run teleport @s ^ ^ ^1
execute at @s[nbt={HurtTime:9s},team=Red] at @s run effect give @e[distance=..2,team=Blue] minecraft:instant_damage 1
execute at @s[nbt={HurtTime:9s},team=Blue] at @s run effect give @e[distance=..2,team=Red] minecraft:instant_damage 1
execute at @s[nbt={HurtTime:9s},team=Red] at @s run effect give @e[distance=..2,team=Blue] minecraft:levitation 1 3
execute at @s[nbt={HurtTime:9s},team=Blue] at @s run effect give @e[distance=..2,team=Red] minecraft:levitation 1 3