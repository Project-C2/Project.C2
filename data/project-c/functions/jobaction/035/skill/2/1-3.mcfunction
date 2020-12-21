execute at @s facing entity @e[tag=035-2-now,limit=1] feet positioned ~ ~-0.5 ~ anchored eyes run summon spectral_arrow ^-0.5 ^ ^1 {Tags:["Arrow","035Arrow2","035-2second"],PierceLevel:10b,life:1200s,NoGravity:1b,damage:3.0d,Duration:300}
execute as @e[tag=035-2-now,limit=1] store result entity @e[tag=035-2second,limit=1] Motion[0] double 0.002 run scoreboard players get @s CT1
execute as @e[tag=035-2-now,limit=1] store result entity @e[tag=035-2second,limit=1] Motion[1] double 0.002 run scoreboard players get @s CT2
execute as @e[tag=035-2-now,limit=1] store result entity @e[tag=035-2second,limit=1] Motion[2] double 0.002 run scoreboard players get @s CT3
execute at @s run playsound minecraft:item.crossbow.shoot master @a ~ ~ ~ 1 1.1
data merge block 49 2 -69 {auto:1b}