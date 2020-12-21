execute as @e[tag=HatenaPotion,team=Red] at @s run scoreboard players add @a[distance=..3,gamemode=!spectator,team=Red] CT1 100
execute as @e[tag=HatenaPotion,team=Red] at @s run scoreboard players add @a[distance=..3,gamemode=!spectator,team=Red] CT2 100
execute as @e[tag=HatenaPotion,team=Red] at @s run scoreboard players add @a[distance=..3,gamemode=!spectator,team=Red] CT3 100

execute as @e[tag=HatenaPotion,team=Blue] at @s run scoreboard players add @a[distance=..3,gamemode=!spectator,team=Blue] CT1 100
execute as @e[tag=HatenaPotion,team=Blue] at @s run scoreboard players add @a[distance=..3,gamemode=!spectator,team=Blue] CT2 100
execute as @e[tag=HatenaPotion,team=Blue] at @s run scoreboard players add @a[distance=..3,gamemode=!spectator,team=Blue] CT3 100

execute as @e[tag=HatenaPotion,team=Red] at @s run execute as @a[distance=..3,gamemode=!spectator,team=Red] at @s run particle happy_villager ~ ~1 ~ 0.3 1 0.3 0 30
execute as @e[tag=HatenaPotion,team=Blue] at @s run execute as @a[distance=..3,gamemode=!spectator,team=Blue] at @s run particle happy_villager ~ ~1 ~ 0.3 1 0.3 0 30