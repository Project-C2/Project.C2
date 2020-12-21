execute positioned as @s anchored eyes rotated ~ 0 positioned ^ ^ ^-1.2 anchored feet run summon arrow ~ ~-0.3 ~ {CustomName:'{"text":"Flèche miroir","color":"#5599ff","bold":true,"italic":false}',Tags:["this","Arrow"],damage:1d,life:1200s,Color:-1}
execute store result entity @e[tag=this,limit=1] damage double 0.1 run scoreboard players get @e[tag=097,limit=1,sort=nearest] counter_3
data modify entity @e[tag=this,limit=1] Owner set from entity @e[tag=097,limit=1,sort=nearest] Owner
execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^0.75 {Tags:["vector"],Duration:1}
data modify entity @e[tag=this,limit=1] Motion set from entity @e[tag=vector,limit=1] Pos
tag @e[tag=vector] remove vector
tag @e[tag=this] remove this
tag @s remove hit
