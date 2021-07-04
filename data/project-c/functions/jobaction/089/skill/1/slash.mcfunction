scoreboard players operation #089dummy playerNumber = @s playerNumber
execute as @e[type=pig,name="忘却の彼方より訪れし王"] if score @s playerNumber = #089dummy playerNumber run kill @s
execute if entity @s[team=Red] at @s run summon pig ~ ~ ~ {CustomName:'"忘却の彼方より訪れし王"',Saddle:1b,Attributes:[{Name:"generic.max_health",Base:8d},{Name:"generic.movement_speed",Base:0.51d}],Health:8.0f,Team:"Red",DeathLootTable:"empty",Tags:["this"]}
execute if entity @s[team=Blue] at @s run summon pig ~ ~ ~ {CustomName:'"忘却の彼方より訪れし王"',Saddle:1b,Attributes:[{Name:"generic.max_health",Base:8d},{Name:"generic.movement_speed",Base:0.51d}],Health:8.0f,Team:"Blue",DeathLootTable:"empty",Tags:["this"]}

scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
tag @e[tag=this] remove this
data merge block -37 2 91 {auto:1b}

execute positioned ~ ~0.3 ~ rotated ~ 0 positioned ^ ^ ^0.3 run function project-c:jobaction/089/skill/1/slash_tp
scoreboard players remove @s CT1 200
item replace entity @s container.1 with minecraft:air

playsound minecraft:entity.lightning_bolt.impact master @a ^ ^ ^2.5 1 1.6
playsound minecraft:entity.lightning_bolt.thunder master @a ^ ^ ^2.5 1 1.6
playsound minecraft:entity.player.attack.sweep master @a ^ ^ ^2.5 1.2 0.5
playsound minecraft:entity.player.attack.sweep master @a ^ ^ ^2.5 1.2 0.5

execute at @s positioned ~ ~0.4 ~ rotated ~90 ~ run function project-c:jobaction/089/skill/1/slash_loop
scoreboard players reset #089dummy
execute if entity @e[tag=hit2,limit=1] run function project-c:jobaction/089/skill/1/hit-entity-2
tag @e[tag=hitx] remove hitx
kill @e[tag=to_tp]
