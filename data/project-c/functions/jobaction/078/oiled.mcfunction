particle minecraft:block coal_block ~ ~1 ~ 0.5 0.5 0.5 0 4 force
effect give @s slowness 1 2
effect give @s fire_resistance 1 0
scoreboard players remove @s 078-oil 1

execute unless entity @s[nbt={Fire:-1s}] unless entity @s[nbt={Fire:-20s}] if entity @s[nbt={HurtTime:9s}] run tag @s add 078-ignite

execute if entity @s[tag=078-ignite] run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 0 force
execute if entity @s[tag=078-ignite] run summon creeper ~ ~1 ~ {CustomName:'{"text":"EXPLOSION"}',ignited:1b,ExplosionRadius:2b,Fuse:0s,Invulnerable:1b,NoAI:1b,Silent:1b}
execute if entity @s[tag=078-ignite] run tag @e[scores={078-oil=1..},distance=1..6] add 078-ignite


execute if entity @s[tag=078-ignite] run scoreboard players reset @s 078-oil
execute if entity @s[tag=078-ignite] run tag @s remove 078-ignite


effect clear @s[scores={078-oil=0}] slowness