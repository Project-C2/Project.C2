particle firework ~ ~ ~ 0 0 0 0.1 1
teleport @s ^ ^ ^0.4 ~ ~
scoreboard players add @s counter 1



execute if entity @s[scores={counter=21..}] run summon creeper ~ ~ ~ {CustomName:"{\"text\":\"策略のコンパス\"}",ignited:1b,ExplosionRadius:3b,Fuse:0s,Invulnerable:0b,NoAI:1b,Silent:1b}

kill @s[scores={counter=21..}]