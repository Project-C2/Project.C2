summon creeper ~2 ~ ~ {CustomName:'{"text":"1002J","color":"dark_red","bold":true,"underlined":true,"italic":false}',ignited:1b,ExplosionRadius:2b,Fuse:2s,Invulnerable:1b,NoAI:1b,Silent:1b,powered:1b,Tags:["this"]}
summon creeper ~-2 ~ ~ {CustomName:'{"text":"1002J","color":"dark_red","bold":true,"underlined":true,"italic":false}',ignited:1b,ExplosionRadius:2b,Fuse:2s,Invulnerable:1b,NoAI:1b,Silent:1b,powered:1b,Tags:["this"]}
summon creeper ~ ~ ~2 {CustomName:'{"text":"1002J","color":"dark_red","bold":true,"underlined":true,"italic":false}',ignited:1b,ExplosionRadius:2b,Fuse:2s,Invulnerable:1b,NoAI:1b,Silent:1b,powered:1b,Tags:["this"]}
summon creeper ~ ~ ~-2 {CustomName:'{"text":"1002J","color":"dark_red","bold":true,"underlined":true,"italic":false}',ignited:1b,ExplosionRadius:2b,Fuse:2s,Invulnerable:1b,NoAI:1b,Silent:1b,powered:1b,Tags:["this"]}
summon creeper ~1.414 ~ ~1.414 {CustomName:'{"text":"1002J","color":"dark_red","bold":true,"underlined":true,"italic":false}',ignited:1b,ExplosionRadius:2b,Fuse:2s,Invulnerable:1b,NoAI:1b,Silent:1b,powered:1b,Tags:["this"]}
summon creeper ~-1.414 ~ ~1.414 {CustomName:'{"text":"1002J","color":"dark_red","bold":true,"underlined":true,"italic":false}',ignited:1b,ExplosionRadius:2b,Fuse:2s,Invulnerable:1b,NoAI:1b,Silent:1b,powered:1b,Tags:["this"]}
summon creeper ~-1.414 ~ ~-1.414 {CustomName:'{"text":"1002J","color":"dark_red","bold":true,"underlined":true,"italic":false}',ignited:1b,ExplosionRadius:2b,Fuse:2s,Invulnerable:1b,NoAI:1b,Silent:1b,powered:1b,Tags:["this"]}
summon creeper ~1.414 ~ ~-1.414 {CustomName:'{"text":"1002J","color":"dark_red","bold":true,"underlined":true,"italic":false}',ignited:1b,ExplosionRadius:2b,Fuse:2s,Invulnerable:1b,NoAI:1b,Silent:1b,powered:1b,Tags:["this"]}
summon creeper ~1 ~3 ~1 {CustomName:'{"text":"1002J","color":"dark_red","bold":true,"underlined":true,"italic":false}',ignited:1b,ExplosionRadius:2b,Fuse:2s,Invulnerable:1b,NoAI:1b,Silent:1b,powered:1b,Tags:["this"]}
summon creeper ~-1 ~3 ~1 {CustomName:'{"text":"1002J","color":"dark_red","bold":true,"underlined":true,"italic":false}',ignited:1b,ExplosionRadius:2b,Fuse:2s,Invulnerable:1b,NoAI:1b,Silent:1b,powered:1b,Tags:["this"]}
summon creeper ~-1 ~3 ~-1 {CustomName:'{"text":"1002J","color":"dark_red","bold":true,"underlined":true,"italic":false}',ignited:1b,ExplosionRadius:2b,Fuse:2s,Invulnerable:1b,NoAI:1b,Silent:1b,powered:1b,Tags:["this"]}
summon creeper ~1 ~3 ~-1 {CustomName:'{"text":"1002J","color":"dark_red","bold":true,"underlined":true,"italic":false}',ignited:1b,ExplosionRadius:2b,Fuse:2s,Invulnerable:1b,NoAI:1b,Silent:1b,powered:1b,Tags:["this"]}
summon creeper ~ ~5 ~ {CustomName:'{"text":"1002J","color":"dark_red","bold":true,"underlined":true,"italic":false}',ignited:1b,ExplosionRadius:2b,Fuse:2s,Invulnerable:1b,NoAI:1b,Silent:1b,powered:1b,Tags:["this"]}
effect clear @s resistance
effect give @s minecraft:resistance 1 0 true
execute if entity @s[team=Red] run team join Red @e[tag=this]
execute if entity @s[team=Blue] run team join Blue @e[tag=this]
tag @e[tag=this] remove this

playsound minecraft:block.dispenser.fail master @a ~ ~ ~ 1 1.2
particle block minecraft:emerald_block ~ ~1 ~ 0 0 0 1 20 normal @a

