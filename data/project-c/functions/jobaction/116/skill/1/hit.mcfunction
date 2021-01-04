summon area_effect_cloud ~ ~ ~ {Tags:["this"],Particle:"minecraft:falling_dust minecraft:black_wool",Radius:1.7f,Age:4,Duration:5,WaitTime:1,Effects:[{Id:7b,Amplifier:1b,Duration:1}]}
scoreboard players operation #116- playerNumber = @s playerNumber
execute as @a[scores={jobNumber=116}] if score @s playerNumber = #116- playerNumber run data modify entity @e[tag=this,limit=1] Owner set from entity @s UUID
tag @e[tag=this] remove this
particle crit ~ ~ ~ 1 1 1 0.01 80 normal @a
particle crit ~ ~ ~ 1 1 1 0.01 20 force @a
playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 1.3 0.5
kill @s

