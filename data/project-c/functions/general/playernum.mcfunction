#初期化
scoreboard objectives remove playerNumber
scoreboard objectives add playerNumber dummy

scoreboard players set @a playerNumber 0
summon minecraft:area_effect_cloud 0 0 0 {Tags:["setPlayerNumber"],Duration:1}
scoreboard players set @e[tag=setPlayerNumber,type=minecraft:area_effect_cloud] playerNumber 0
execute as @e[tag=setPlayerNumber,type=minecraft:area_effect_cloud] run function project-c:general/setplayernum
kill @e[tag=setPlayerNumber,type=minecraft:area_effect_cloud]