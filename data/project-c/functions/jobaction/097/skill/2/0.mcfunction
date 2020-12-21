scoreboard players set @s counter_2 1
scoreboard players set @s subcounter 10

execute positioned 0.0 0.0 0.0 run summon minecraft:area_effect_cloud ^ ^ ^2 {Tags:["vector"],Duration:1}
execute anchored eyes run summon minecraft:spectral_arrow ^ ^ ^1 {Tags:["097_2arrow","this","Arrow"],damage:-1.0d,life:1200s,pickup:2b,Duration:0,Glowing:1b}
data modify entity @e[tag=this,limit=1] Owner set from entity @s UUID
data modify entity @e[tag=this,limit=1] Motion set from entity @e[tag=vector,limit=1] Pos
execute if entity @s[team=Red] run team join Red @e[tag=this]
execute if entity @s[team=Blue] run team join Blue @e[tag=this]
scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
tag @e[tag=vector] remove vector
tag @e[tag=this] remove this


playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 0.5

