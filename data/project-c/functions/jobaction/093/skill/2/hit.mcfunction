summon area_effect_cloud ~ ~ ~ {Tags:["this"],Duration:5,Age:4,WaitTime:1,Radius:1.1f,Particle:"splash",CustomName:'{"text":"トロピカルスクランブル","color":"red","bold":true,"italic":false}',Effects:[{Id:7b,Amplifier:1b,Duration:1,ShowIcon:0b}]}
tag @s add 093
execute as @a[scores={jobNumber=93}] if score @s playreNumber = @e[tag=093,limit=1] playerNumber run data modify entity @e[tag=this,limit=1] Owner set from entity @s UUID
tag @s remove 093
tag @e[tag=this] remove this
particle explosion ~ ~ ~ 0 0 0 1 1 force @a
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.7 1.6

kill @s