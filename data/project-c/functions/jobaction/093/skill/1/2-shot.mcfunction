summon trident ^ ^0.1 ^0.1 {life:1200s,Tags:["trident","this"]}
data modify entity @e[tag=this,limit=1] Owner set from entity @s Owner
execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^1.3 {Tags:["vector"],Duration:1,CustomName:'{"text":"トライデントスプリンクラー","color":"aqua","bold":true}'}
data modify entity @e[tag=this,limit=1] Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]
tag @e[tag=this] remove this
