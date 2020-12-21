scoreboard players set @s counter_2 0
effect give @a[tag=095riding] resistance 1 4
effect give @s resistance 1 4
summon minecraft:creeper ~ -10 ~ {CustomName:'{"text":"ヒポグリフ","color":"#dddddd","bold":true,"underlined":true,"italic":false}',Fuse:0,ExplosionRadius:2,Tags:["this"]}
tp @e[tag=this] ~ ~ ~
tag @e[tag=this] remove this


