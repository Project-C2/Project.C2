scoreboard players add @s counter 1

execute if entity @s[scores={counter=7}] run summon creeper ~4 ~4 ~4 {ignited:1b,ExplosionRadius:5b,Fuse:0s,Invulnerable:1b,NoAI:1b,Silent:1b}
execute if entity @s[scores={counter=7}] run summon creeper ~4 ~-4 ~-4 {ignited:1b,ExplosionRadius:5b,Fuse:0s,Invulnerable:1b,NoAI:1b,Silent:1b}
execute if entity @s[scores={counter=7}] run summon creeper ~-4 ~-4 ~4 {ignited:1b,ExplosionRadius:5b,Fuse:0s,Invulnerable:1b,NoAI:1b,Silent:1b}
execute if entity @s[scores={counter=7}] run summon creeper ~-4 ~4 ~-4 {ignited:1b,ExplosionRadius:5b,Fuse:0s,Invulnerable:1b,NoAI:1b,Silent:1b}

execute if entity @s[scores={counter=12}] run summon creeper ~-4 ~-4 ~-4 {ignited:1b,ExplosionRadius:5b,Fuse:0s,Invulnerable:1b,NoAI:1b,Silent:1b}
execute if entity @s[scores={counter=12}] run summon creeper ~-4 ~4 ~4 {ignited:1b,ExplosionRadius:5b,Fuse:0s,Invulnerable:1b,NoAI:1b,Silent:1b}
execute if entity @s[scores={counter=12}] run summon creeper ~4 ~4 ~-4 {ignited:1b,ExplosionRadius:5b,Fuse:0s,Invulnerable:1b,NoAI:1b,Silent:1b}
execute if entity @s[scores={counter=12}] run summon creeper ~4 ~-4 ~4 {ignited:1b,ExplosionRadius:5b,Fuse:0s,Invulnerable:1b,NoAI:1b,Silent:1b}

execute if entity @s[scores={counter=12}] run kill @s