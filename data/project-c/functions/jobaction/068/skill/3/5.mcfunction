scoreboard players add @s[nbt={OnGround:0b}] counter 1

kill @s[scores={counter=60..}]
tag @s[nbt={OnGround:1b}] add 068-fovosbulletfire

execute if entity @s[tag=068-fovosbulletfire] run summon creeper ~ ~ ~ {CustomName:'{"text":"爆撃機フォボス"}',ignited:1b,ExplosionRadius:3b,Fuse:0s,Invulnerable:1b,NoAI:1b,Silent:1b}

execute if entity @s[tag=068-fovosbulletfire] run particle minecraft:campfire_cosy_smoke ~ ~0.5 ~ 0 0 0 0.05 10 force @a

execute if entity @s[tag=068-fovosbulletfire] run particle minecraft:campfire_cosy_smoke ~ ~0.5 ~ 1 1 1 0.01 10 force @a

kill @s[tag=068-fovosbulletfire]