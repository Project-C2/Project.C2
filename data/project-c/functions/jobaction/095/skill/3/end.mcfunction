effect give @a[tag=095riding] slow_falling 2 0
effect give @a[tag=095riding] resistance 1 4
particle minecraft:explosion_emitter ~ ~ ~ 2 2 2 1 8 normal @a
particle minecraft:explosion_emitter ~ ~ ~ 2 2 2 1 2 force @a
particle minecraft:cloud ~ ~ ~ 1 1 1 1 800 normal @a
particle minecraft:cloud ~ ~ ~ 2 2 2 0.5 800 normal @a
particle minecraft:cloud ~ ~ ~ 1 1 1 1 400 force @a
summon minecraft:creeper ~ -10 ~ {CustomName:'{"text":"ヒポグリフ","color":"#dddddd","bold":true,"underlined":true,"italic":false}',Fuse:0,ExplosionRadius:2,Tags:["this"]}
tp @e[tag=this] ~ ~ ~
tag @e[tag=this] remove this


