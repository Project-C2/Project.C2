execute as @e[tag=HatenaPotion,team=Red] at @s run effect give @e[distance=..3,gamemode=!spectator,team=Red] minecraft:regeneration 5 10
execute as @e[tag=HatenaPotion,team=Red] at @s run execute as @a[distance=..3,gamemode=!spectator,team=Red] at @s run particle heart ~ ~1 ~ 0.3 1 0.3 0 20
execute as @e[tag=HatenaPotion,team=Blue] at @s run effect give @e[distance=..3,gamemode=!spectator,team=Blue] minecraft:regeneration 5 10
execute as @e[tag=HatenaPotion,team=Blue] at @s run execute as @a[distance=..3,gamemode=!spectator,team=Blue] at @s run particle heart ~ ~1 ~ 0.3 1 0.3 0 20