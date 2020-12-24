scoreboard players set #110- counter_3 960

tp @s @s
execute anchored eyes positioned ^ ^ ^-0.3 run effect give @a[distance=..2.3] resistance 1 4 true
execute anchored eyes positioned ^ ^ ^-0.3 run effect give @a[distance=..2.3] resistance 1 4 true
summon minecraft:creeper ~ -10 ~ {Tags:["this"],ExplosionRadius:-1,Fuse:0,PersistenceRequired:1b,Invulnerable:1b}
execute anchored eyes positioned ^ ^ ^-0.3 run tp @e[tag=this] ~ ~ ~
tag @e[tag=this] remove this
schedule function project-c:jobaction/110/skills/07/stopsound 2t append
tp @s @s
execute unless data entity @s {ActiveEffects:[{Id:25b}]} run summon minecraft:area_effect_cloud ~ ~0.5 ~ {Particle:"cloud",Duration:5,Age:4,WaitTime:1,Radius:1.0f,Effects:[{Id:25b,Amplifier:0b,Duration:2}]}

playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 1
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1.2
particle minecraft:cloud ^ ^1 ^1 0.1 0.1 0.1 0.5 100 normal @a
particle minecraft:cloud ^ ^1 ^1 0.1 0.1 0.1 0.5 25 force @a