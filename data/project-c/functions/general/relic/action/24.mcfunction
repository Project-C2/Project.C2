scoreboard players add @s[scores={relicCount=..201}] relicCount 1
execute if entity @s[scores={relicCount=201},team=Red] run effect give @a[distance=..20,gamemode=!spectator,limit=4,team=Red] minecraft:glowing 5 0 false
execute if entity @s[scores={relicCount=201},team=Blue] run effect give @a[distance=..20,gamemode=!spectator,limit=4,team=Blue] minecraft:glowing 5 0 false

execute if entity @s[scores={relicCount=201}] run playsound minecraft:entity.ghast.scream master @s ~ ~ ~ 1 1.25
execute if entity @s[scores={relicCount=201}] run particle minecraft:totem_of_undying ~ ~1 ~ 3 0 3 1 100 force @a
execute if entity @s[scores={relicCount=201}] run scoreboard players add @s CT1 100
execute if entity @s[scores={relicCount=201}] run scoreboard players add @s CT2 100
execute if entity @s[scores={relicCount=201}] run scoreboard players add @s CT3 100
execute if entity @s[scores={relicCount=201..}] at @s run scoreboard players set @s relicCount 0
