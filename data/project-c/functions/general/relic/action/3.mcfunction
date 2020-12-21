effect clear @a[scores={relic=3}] minecraft:regeneration
effect clear @a[scores={relic=3}] minecraft:instant_health
tag @a[scores={relic=3}] add Regene
tag @a[scores={deathCount=1..},tag=!relic3deathA] add relic3death
execute as @a[team=Blue,tag=relic3death] at @s run tag @a[scores={relic=3},team=Red,gamemode=!spectator] add relic3killed
execute as @a[team=Red,tag=relic3death] at @s run tag @a[scores={relic=3},team=Blue,gamemode=!spectator] add relic3killed
execute as @a[tag=relic3killed] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 1 200 force @a
execute as @a[tag=relic3killed] at @s run playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 2 2
execute as @a[tag=relic3killed] at @s run effect give @s minecraft:instant_health 1 100
execute as @a[tag=relic3killed] at @s run scoreboard players set @s CT1 1200
execute as @a[tag=relic3killed] at @s run scoreboard players set @s CT2 1200
execute as @a[tag=relic3killed] at @s run scoreboard players set @s CT3 1200
execute as @a[tag=relic3killed] at @s run tag @s remove relic3killed
tag @a[scores={deathCount=1..}] add relic3deathA
tag @a[scores={deathCount=1..}] remove relic3death
