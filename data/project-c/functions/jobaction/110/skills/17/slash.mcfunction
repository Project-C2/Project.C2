scoreboard players operation #110- counter_3 += @e[tag=to_tp,limit=1] counter
scoreboard players operation #089dummy playerNumber = @s playerNumber

execute positioned ~ ~0.3 ~ rotated ~ 0 positioned ^ ^ ^0.3 run function project-c:jobaction/110/skills/17/slash_tp



playsound minecraft:entity.lightning_bolt.impact master @a ^ ^ ^2.5 1 1.6
playsound minecraft:entity.lightning_bolt.thunder master @a ^ ^ ^2.5 1 1.6
playsound minecraft:entity.player.attack.sweep master @a ^ ^ ^2.5 1.2 0.5
playsound minecraft:entity.player.attack.sweep master @a ^ ^ ^2.5 1.2 0.5

execute at @s positioned ~ ~0.4 ~ rotated ~90 ~ run function project-c:jobaction/110/skills/17/slash_loop
scoreboard players reset #089dummy
execute if entity @e[tag=hit2,limit=1] run function project-c:jobaction/110/skills/17/hit-entity-2
tag @e[tag=hitx] remove hitx
kill @e[tag=to_tp]
