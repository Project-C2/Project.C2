summon creeper ~ -10 ~ {Tags:["104"],Fuse:0,ExplosionRadius:1,CustomName:'{"text": "爆弾投げ","color":"red","italic":false}'}
tp @e[tag=104,limit=1] ~ ~ ~
execute facing entity @e[tag=Battle,sort=nearest,limit=1,distance=..1.5] feet run tp @e[tag=104,limit=1] ^ ^ ^0.4
tag @e[tag=104] remove 104

kill @s
