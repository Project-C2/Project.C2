execute unless entity @s[tag=110geometric] at @e[tag=hit] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["this"],Particle:"instant_effect",Radius:0.4f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:5,DurationOnUse:0,Age:4,WaitTime:1,Effects:[{Id:11b,Amplifier:0b,Duration:1},{Id:7b,Amplifier:1b,Duration:1}],CustomName:'{"text":"電光","color":"yellow"}'}
execute if entity @s[tag=110geometric] at @e[tag=hit] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["this"],Particle:"instant_effect",Radius:0.4f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:5,DurationOnUse:0,Age:4,WaitTime:1,Effects:[{Id:7b,Amplifier:1b,Duration:1}],CustomName:'{"text":"電光","color":"yellow"}'}

execute as @a[tag=110denkou_addable] if score @s playerNumber = @e[tag=now,limit=1] playerNumber run data modify entity @e[type=area_effect_cloud,tag=this,limit=1] Owner set from entity @s UUID
tag @e[tag=this] remove this
tag @e[tag=hit] remove hit
scoreboard players set @s[scores={counter=..7}] counter 8
scoreboard players set #089dummy counter 0

execute as @a[tag=110denkou_addable] if score @s playerNumber = #089dummy playerNumber run playsound minecraft:entity.arrow.hit_player master @s ~ -100 ~ 1 0.5 1