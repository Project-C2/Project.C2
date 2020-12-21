scoreboard players add @s[nbt={OnGround:0b}] counter 1

kill @s[scores={counter=60..}]
tag @s[nbt={OnGround:1b}] add 077-starsexp

particle minecraft:end_rod ~ ~ ~ 0 0 0 0.05 1 force @a

execute if entity @s[tag=077-starsexp] run summon creeper ~ ~ ~ {CustomName:"{\"text\":\"To The Stars\"}",ignited:1b,ExplosionRadius:1b,Fuse:0s,Invulnerable:1b,NoAI:1b,Silent:1b}

execute if entity @s[tag=077-starsexp] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.1 10 force @a

kill @s[tag=077-starsexp]