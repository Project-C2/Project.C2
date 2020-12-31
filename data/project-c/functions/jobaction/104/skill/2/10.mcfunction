particle minecraft:explosion ~ ~ ~ 0 0 0 0 2 force @a
particle minecraft:flame ~ ~ ~ 0.3 0.3 0.3 0.4 40 normal @a
particle minecraft:flame ~ ~ ~ 0.3 0.3 0.3 0.4 10 force @a

summon creeper ~ -10 ~ {Tags:["104"],Fuse:0,ExplosionRadius:1,CustomName:'{"text": "ポンポン爆弾","color":"red","bold":true,"italic":false}'}
tp @e[tag=104,limit=1] ~ ~ ~
tag @e[tag=104] remove 104

kill @s
