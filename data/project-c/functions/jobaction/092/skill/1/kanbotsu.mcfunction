tp @s ~ ~-1 ~
execute align y run summon minecraft:shulker ~0.5 ~-2 ~0.5 {NoAI:1b,Invulnerable:1b,DeathTime:19s,Silent:1b,Color:12b,Tags:["092-kanbotsu-ground"]}
execute align y run summon minecraft:shulker ~-0.5 ~-2 ~0.5 {NoAI:1b,Invulnerable:1b,DeathTime:19s,Silent:1b,Color:12b,Tags:["092-kanbotsu-ground"]}
execute align y run summon minecraft:shulker ~-0.5 ~-2 ~-0.5 {NoAI:1b,Invulnerable:1b,DeathTime:19s,Silent:1b,Color:12b,Tags:["092-kanbotsu-ground"]}
execute align y run summon minecraft:shulker ~0.5 ~-2 ~-0.5 {NoAI:1b,Invulnerable:1b,DeathTime:19s,Silent:1b,Color:12b,Tags:["092-kanbotsu-ground"]}
data merge block -1 2 89 {auto:1b}
