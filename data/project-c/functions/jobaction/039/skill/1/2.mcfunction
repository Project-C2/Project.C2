execute as @a[scores={jobNumber=39}] if score @s playerNumber = @e[tag=039-as,limit=1] playerNumber run gamemode adventure @s
execute as @a[scores={jobNumber=39}] if score @s playerNumber = @e[tag=039-as,limit=1] playerNumber run effect give @s minecraft:instant_damage 1 0
execute if entity @s[team=RedDummy] at @e[team=!Red,tag=Battle,distance=..3.0] run summon area_effect_cloud ~ ~0.5 ~ {Tags:["039assult_AEC"],CustomName:'{"text":"ショートアサルト"}',Radius:1.1f,Duration:5,Age:4,WaitTime:1,Effects:[{Id:7b,Amplifier:1b,Duration:1,ShowParticles:0b}]}
execute if entity @s[team=BlueDummy] at @e[team=!Blue,tag=Battle,distance=..3.0] run summon area_effect_cloud ~ ~0.5 ~ {Tags:["039assult_AEC"],CustomName:'{"text":"ショートアサルト"}',Radius:1.1f,Duration:5,Age:4,WaitTime:1,Effects:[{Id:7b,Amplifier:1b,Duration:1,ShowParticles:0b}]}
execute as @a[scores={jobNumber=39}] if score @s playerNumber = @e[tag=039-as,limit=1] playerNumber at @s as @e[tag=039assult_AEC] run data modify entity @s Owner set from entity @a[scores={jobNumber=39},limit=1,sort=nearest] UUID
tag @e[tag=039assult_AEC] remove 039assult_AEC
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.2 30 normal @a
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.2 10 force @a
playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 2
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1
particle minecraft:flame ~ ~ ~ 0 0 0 1 120 normal @a
particle minecraft:flame ~ ~ ~ 0 0 0 1 40 force @a
kill @s
