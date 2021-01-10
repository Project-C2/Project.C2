data merge entity @s {Marker:1b}
execute as @e[tag=now] at @s at @e[tag=dagger-hit,limit=1,sort=nearest] run summon area_effect_cloud ~ ~0.7 ~ {Particle:"minecraft:crit",Duration:5,Age:4,WaitTime:1,Radius:1f,Effects:[{Id:11b,Amplifier:0b,Duration:2,ShowParticles:0b,ShowIcon:0b}]}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["110vector"],Duration:1}
data modify entity @e[tag=110vector,limit=1] Pos[0] set from entity @e[tag=now,limit=1] Motion[0]
data modify entity @e[tag=110vector,limit=1] Pos[2] set from entity @e[tag=now,limit=1] Motion[2]
execute positioned 0.0 0.0 0.0 facing entity @e[tag=110vector,limit=1] feet rotated ~ 0 positioned as @e[tag=dagger-hit,limit=1,sort=nearest] positioned ^ ^ ^-1.5 run summon trident ~ ~1 ~ {life:1200s,damage:2.0d,Motion:[0.0d,0.0d,0.0d],Tags:["this","110trident_blood_dagger"],SoundEvent:"minecraft:ui.toast.out"}
execute as @a[tag=110_dagger_owner] if score @s playerNumber = @e[tag=now,limit=1] playerNumber run tag @s add 110dummy
data modify entity @e[tag=this,limit=1] Owner set from entity @a[tag=110dummy,limit=1] UUID
tag @a[tag=110dummy] remove 110dummy
data modify entity @e[tag=this,limit=1] Motion set from entity @e[tag=110vector,limit=1] Pos
playsound minecraft:item.trident.hit_ground master @a ~ ~ ~ 1 0.5
playsound minecraft:item.trident.hit master @a ~ ~ ~ 1 0.5
particle minecraft:sweep_attack ~ ~ ~ 0.3 0.3 0.3 1 4 normal @a
particle minecraft:sweep_attack ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
kill @e[tag=110vector]
tag @e[tag=dagger-hit] remove dagger-hit
tag @e[tag=this] remove this
function project-c:jobaction/110/weapons/7/set-dagger