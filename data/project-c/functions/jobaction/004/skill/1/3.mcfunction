#実行者     -> ArrowSStand
#実行地点   -> 実行者


summon creeper ~0 ~0 ~0 {Motion:[0d,1d,0d],Rotation:[0f,0f],ExplosionRadius:2b,Fuse:0s,ignited:1b}
summon arrow ~ ~ ~ {Motion:[1.0d,1.0d,0.0d],Tag:["Arrow"],life:1200}
summon arrow ~ ~ ~ {Motion:[1.0d,1.0d,1.0d],Tag:["Arrow"],life:1200}
summon arrow ~ ~ ~ {Motion:[0.0d,1.0d,1.0d],Tag:["Arrow"],life:1200}
summon arrow ~ ~ ~ {Motion:[-1.0d,1.0d,1.0d],Tag:["Arrow"],life:1200}
summon arrow ~ ~ ~ {Motion:[-1.0d,1.0d,0.0d],Tag:["Arrow"],life:1200}
summon arrow ~ ~ ~ {Motion:[-1.0d,1.0d,-1.0d],Tag:["Arrow"],life:1200}
summon arrow ~ ~ ~ {Motion:[0.0d,1.0d,-1.0d],Tag:["Arrow"],life:1200}
summon arrow ~ ~ ~ {Motion:[1.0d,1.0d,-1.0d],Tag:["Arrow"],life:1200}
summon arrow ~ ~ ~ {Motion:[1.0d,0.0d,0.0d],Tag:["Arrow"],life:1200}
summon arrow ~ ~ ~ {Motion:[1.0d,0.0d,1.0d],Tag:["Arrow"],life:1200}
summon arrow ~ ~ ~ {Motion:[0.0d,0.0d,1.0d],Tag:["Arrow"],life:1200}
summon arrow ~ ~ ~ {Motion:[-1.0d,0.0d,1.0d],Tag:["Arrow"],life:1200}
summon arrow ~ ~ ~ {Motion:[-1.0d,0.0d,0.0d],Tag:["Arrow"],life:1200}
summon arrow ~ ~ ~ {Motion:[-1.0d,0.0d,-1.0d],Tag:["Arrow"],life:1200}
summon arrow ~ ~ ~ {Motion:[0.0d,0.0d,-1.0d],Tag:["Arrow"],life:1200}
summon arrow ~ ~ ~ {Motion:[1.0d,0.0d,-1.0d],Tag:["Arrow"],life:1200}
summon arrow ~ ~ ~ {Motion:[0.0d,-1.0d,0.0d],Tag:["Arrow"],life:1200}
summon arrow ~ ~ ~ {Motion:[1.0d,-1.0d,0.0d],Tag:["Arrow"],life:1200}
summon arrow ~ ~ ~ {Motion:[1.0d,-1.0d,1.0d],Tag:["Arrow"],life:1200}
summon arrow ~ ~ ~ {Motion:[0.0d,-1.0d,1.0d],Tag:["Arrow"],life:1200}
summon arrow ~ ~ ~ {Motion:[-1.0d,-1.0d,1.0d],Tag:["Arrow"],life:1200}
summon arrow ~ ~ ~ {Motion:[-1.0d,-1.0d,0.0d],Tag:["Arrow"],life:1200}
summon arrow ~ ~ ~ {Motion:[-1.0d,-1.0d,-1.0d],Tag:["Arrow"],life:1200}
summon arrow ~ ~ ~ {Motion:[0.0d,-1.0d,-1.0d],Tag:["Arrow"],life:1200}
summon arrow ~ ~ ~ {Motion:[1.0d,-1.0d,-1.0d],Tag:["Arrow"],life:1200}

particle minecraft:explosion ~ ~ ~ 0 0 0 1 1
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 1

kill @s

execute unless entity @e[tag=ArrowS] run data merge block -73 2 -122 {auto:0b}