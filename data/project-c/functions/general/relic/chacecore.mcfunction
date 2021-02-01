scoreboard players add @s relicCount 1

execute as @s[scores={relicCount=10..},team=Red,gamemode=!spectator] at @s run execute as @a[distance=1..12,team=Red,tag=Battle] at @s run summon area_effect_cloud ~ ~1 ~ {CustomName:'{"text":"Chace Core","italic": false,"color": "dark_red","bold":true}',Tags:["ChaseCore"],Particle:"",Radius:0.3f,WaitTime:1,Duration:5,Age:4,Effects:[{}]}

execute as @s[scores={relicCount=10..},team=Blue,gamemode=!spectator] at @s run execute as @a[distance=1..12,team=Blue,tag=Battle] at @s run summon area_effect_cloud ~ ~1 ~ {CustomName:'{"text":"Chace Core","italic": false,"color": "dark_red","bold":true}',Tags:["ChaseCore"],Particle:"",Radius:0.3f,WaitTime:1,Duration:5,Age:4,Effects:[{}]}

execute as @e[tag=ChaseCore] run data modify entity @s Effects set from entity @a[scores={relic=26,relicCount=10..},gamemode=!spectator,limit=1,sort=nearest] ActiveEffects
execute if entity @s[scores={relicCount=10..},gamemode=!spectator] run execute as @e[tag=ChaseCore] run data modify entity @s Effects[{}].Duration set value 11

scoreboard players set @s[scores={relicCount=10..}] relicCount 0

execute as @s[scores={relic=26},team=Red,gamemode=!spectator] at @s run execute as @a[distance=1..12,team=Red,tag=Battle,gamemode=!spectator] at @s run particle minecraft:witch ~ ~1 ~ 1 0 1 1 2 normal @a
execute as @s[scores={relic=26},team=Blue,gamemode=!spectator] at @s run execute as @a[distance=1..12,team=Blue,tag=Battle,gamemode=!spectator] at @s run particle minecraft:witch ~ ~1 ~ 1 0 1 1 2 normal @a

execute as @a[scores={relic=26},gamemode=!spectator] at @s run particle minecraft:witch ~ ~1 ~ 0 1 0 1 2 normal @a