playsound minecraft:entity.player.attack.sweep master @a ^ ^ ^2 1.2 0.5
playsound minecraft:entity.generic.explode master @a ^ ^ ^2 1.2 2.0
execute anchored eyes run summon minecraft:trident ^ ^-0.15 ^0.5 {CustomName:'"ヴォーパルストライク"',Tags:["this","109strike"],Trident:{id:"minecraft:trident",Count:1b,tag:{Enchantments:[{id:"sharpness",lvl:3s}]}},life:1200s,NoGravity:1b,crit:1b,SoundEvent:"minecraft:ui.toast.out"}
data modify entity @e[tag=this,limit=1,sort=nearest] Owner set from entity @s UUID
execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^2.5 {Tags:["109vector"],Duration:1}
data modify entity @e[tag=this,limit=1,sort=nearest] Motion set from entity @e[tag=109vector,limit=1] Pos
kill @e[tag=109vector]
tag @e[tag=this] remove this

execute rotated ~ 0 run summon area_effect_cloud ^ ^ ^-0.35 {Passengers:[{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:18,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:18,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:18,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:18,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:18,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:18,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:18,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:18,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:18,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:18,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:18,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:18,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:18,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:18,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:18,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:18,NoAI:1b,Health:0f}]}
data merge block -64 61 -62 {auto:1b}
scoreboard players reset @s counter_2