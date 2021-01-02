#コスト支払い
scoreboard players set #110- counter_3 1020


summon area_effect_cloud ~ ~ ~ {Particle:"enchant",Duration:5,Radius:0.7f,Age:4,WaitTime:1,Effects:[{Id:1b,Amplifier:33b,Duration:5},{Id:14b,Amplifier:0b,Duration:5}]}

summon area_effect_cloud ~ ~ ~ {Tags:["this","110heathaze"],Duration:7}
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
execute if entity @s[scores={counter_9=3}] run tag @e[tag=this] add 110geometric
tag @e[tag=this] remove this

data merge block -52 82 -62 {auto:1b}