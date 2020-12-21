execute as @e[tag=HatenaPotion,team=Red] at @s run effect give @e[distance=..3,gamemode=!spectator,team=Red] minecraft:instant_health 1 0
execute as @e[tag=HatenaPotion,team=Red] at @s run effect give @e[distance=..3,gamemode=!spectator,team=Red] minecraft:speed 5 1
execute as @e[tag=HatenaPotion,team=Red] at @s run effect give @e[distance=..3,gamemode=!spectator,team=Red] minecraft:jump_boost 5 1
execute as @e[tag=HatenaPotion,team=Red] at @s run effect give @e[distance=..3,gamemode=!spectator,team=Red] minecraft:regeneration 5 1
execute as @e[tag=HatenaPotion,team=Red] at @s run effect give @e[distance=..3,gamemode=!spectator,team=Red] minecraft:strength 5 1

execute as @e[tag=HatenaPotion,team=Blue] at @s run effect give @e[distance=..3,gamemode=!spectator,team=Blue] minecraft:instant_health 1 0
execute as @e[tag=HatenaPotion,team=Blue] at @s run effect give @e[distance=..3,gamemode=!spectator,team=Blue] minecraft:speed 5 1
execute as @e[tag=HatenaPotion,team=Blue] at @s run effect give @e[distance=..3,gamemode=!spectator,team=Blue] minecraft:jump_boost 5 1
execute as @e[tag=HatenaPotion,team=Blue] at @s run effect give @e[distance=..3,gamemode=!spectator,team=Blue] minecraft:regeneration 5 1
execute as @e[tag=HatenaPotion,team=Blue] at @s run effect give @e[distance=..3,gamemode=!spectator,team=Blue] minecraft:strength 5 1

execute as @e[tag=HatenaPotion] at @s run playsound minecraft:entity.evocation_illager.prepare_attack master @a ~ ~ ~ 2 2