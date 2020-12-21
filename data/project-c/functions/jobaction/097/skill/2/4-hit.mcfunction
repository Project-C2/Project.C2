tp @s @s
execute unless entity @s[type=player] run data modify entity @s Motion[1] set value 0.2d
summon minecraft:creeper ~ -10 ~ {CustomName:'{"text":"La Troisième flèche","color":"gold","bold":true,"italic":true}',Fuse:0,ExplosionRadius:1,Tags:["this"],Invulnerable:1b}
summon minecraft:creeper ~ -10 ~ {CustomName:'{"text":"La Troisième flèche","color":"gold","bold":true,"italic":true}',Fuse:0,ExplosionRadius:1,Tags:["this"],Invulnerable:1b}
summon minecraft:creeper ~ -10 ~ {CustomName:'{"text":"La Troisième flèche","color":"gold","bold":true,"italic":true}',Fuse:0,ExplosionRadius:1,Tags:["this"],Invulnerable:1b}
summon minecraft:creeper ~ -10 ~ {CustomName:'{"text":"La Troisième flèche","color":"gold","bold":true,"italic":true}',Fuse:0,ExplosionRadius:1,Tags:["this"],Invulnerable:1b}
execute rotated ~ 0 anchored eyes run tp @e[type=creeper,tag=this] ^ ^-0.75 ^-0.5
tag @e[tag=this] remove this

summon area_effect_cloud ~ ~ ~ {Tags:["this","097bluestar_explosion"],Duration:50}
data modify entity @e[tag=this,limit=1] Owner set from entity @s UUID
tag @s add 097bluestar_hit
data merge block 61 2 91 {auto:1b}
tag @s remove hit
