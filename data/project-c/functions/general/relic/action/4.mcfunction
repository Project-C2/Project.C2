execute as @a[scores={relic=4,relicCount=300},gamemode=!spectator] at @s run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 2 1
execute as @a[scores={relic=4,relicCount=300},gamemode=!spectator] at @s run particle minecraft:witch ~ ~0.1 ~ 0.8 0 0.8 0.02 100 force @a 
execute if entity @a[scores={relic=4,relicCount=300..},gamemode=!spectator,limit=1] as @a[scores={relic=4,relicCount=300..},gamemode=!spectator] at @s run function project-c:general/relic/action/4.active
scoreboard players add @a[scores={relic=4,relicCount=..300}] relicCount 1



