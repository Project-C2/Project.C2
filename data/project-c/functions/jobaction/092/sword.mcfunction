execute if entity @s[team=Red] anchored eyes positioned ^ ^ ^2 as @e[team=!Red,tag=Battle,nbt={HurtTime:10s},limit=1,sort=nearest,distance=..3.5] run tag @s add 092taken
execute if entity @s[team=Blue] anchored eyes positioned ^ ^ ^2 as @e[team=!Blue,tag=Battle,nbt={HurtTime:10s},limit=1,sort=nearest,distance=..3.5] run tag @s add 092taken

execute at @e[tag=092taken] run particle minecraft:ash ~ ~1 ~ 0.8 1.2 0.8 1 400 normal @a
execute at @e[tag=092taken] run particle block netherite_block ~ ~1 ~ 1 1 1 1 50 force @a
execute at @e[tag=092taken] run particle cloud ~ ~1 ~ 0.1 0.1 0.1 0.4 200 force @a
execute at @e[tag=092taken] run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 0.8 0.8
execute if entity @e[tag=092taken,limit=1] run summon minecraft:creeper ~ -10 ~ {ExplosionRadius:1,Fuse:0s,Tags:["this"]}
execute positioned as @e[tag=092taken] anchored eyes rotated ~ 0 run tp @e[tag=this] ^ ^-0.25 ^-0.5
tag @e[tag=this] remove this


tag @e[tag=092taken] remove 092taken
advancement revoke @s only project-c:wanco_job/092/knockback_sword