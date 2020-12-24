scoreboard players set #110- counter_3 1060

execute unless entity @s[scores={counter_9=3}] anchored eyes run summon minecraft:arrow ^ ^ ^0.1 {Tags:["this","110wind_arrow"],life:1200s,damage:1.6d,CustomPotionEffects:[{Id:25b,Amplifier:10b,Duration:7}],Color:5635925}
execute if entity @s[scores={counter_9=3}] anchored eyes run summon minecraft:arrow ^ ^ ^0.1 {Tags:["this","110wind_arrow"],life:1200s,damage:2.0d,CustomPotionEffects:[{Id:25b,Amplifier:10,Duration:7}],Color:5635925}
execute positioned 0.0 0.0 0.0 run summon armor_stand ^ ^ ^3 {Tags:["110vector"],Marker:1b,Invisible:1b,NoGravity:1b}
data modify entity @e[tag=this,limit=1] Motion set from entity @e[tag=110vector,limit=1] Pos
kill @e[tag=110vector]

playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 2
data modify entity @e[tag=this,limit=1] Owner set from entity @s UUID
tag @e[tag=this] remove this
data merge block -52 64 -62 {auto:1b}