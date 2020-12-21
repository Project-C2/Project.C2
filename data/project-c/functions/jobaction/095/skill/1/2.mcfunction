execute anchored eyes run execute positioned ~ ~1.2 ~ run summon minecraft:trident ^ ^ ^0.1 {Tags:["095trident","this"],life:1200s,crit:1b,SoundEvent:"minecraft:ui.toast.out"}
data modify entity @e[tag=this,limit=1] Owner set from entity @s UUID
execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^1.7 {Tags:["vector"],Duration:1}
data modify entity @e[tag=this,limit=1] Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]
tag @e[tag=this] remove this

playsound minecraft:entity.player.attack.sweep master @a ~ ~1 ~ 1.2 0.5

data merge block 35 2 89 {auto:1b}
scoreboard players reset @s counter_1