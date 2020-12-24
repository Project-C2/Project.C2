scoreboard players set #110- counter_3 1080
scoreboard players set #110- counter_1 2
execute positioned ^-1.5 ^ ^ run summon minecraft:area_effect_cloud ~ ~3.1 ~ {Tags:["this","110fireball"],Duration:200}
execute positioned ^1.5 ^ ^ run summon minecraft:area_effect_cloud ~ ~3.1 ~ {Tags:["this","110fireball"],Duration:200}
execute if entity @s[team=Red] run tag @e[tag=this] add 110fireballR
execute if entity @s[team=Blue] run tag @e[tag=this] add 110fireballB
tag @s add 110
execute as @e[tag=110fireball_p_stand] if score @s playerNumber = @a[tag=110,limit=1,sort=nearest] playerNumber run tag @s add 110it
execute if entity @e[tag=110it,limit=1] run scoreboard players operation #110- counter_3 += @e[tag=110it,limit=1] counter
execute if entity @e[tag=110it,limit=1] run kill @e[tag=110it]
execute as @e[tag=this] run data modify entity @s Owner set from entity @a[tag=110,limit=1,sort=nearest] UUID
tag @s remove 110
execute if entity @s[scores={counter_9=3}] run tag @e[tag=this] add 110geometric
execute rotated as @s as @e[tag=this] positioned as @s run tp @s ~ ~ ~ ~ ~
execute at @e[tag=this] run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a
execute at @e[tag=this] run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 1.8 0.5

execute if entity @s[team=Red] as @e[tag=this] positioned as @s positioned ^ ^ ^12 as @e[distance=..40,team=!Red,tag=Battle] run tag @s add 110fireball_target
execute if entity @s[team=Blue] as @e[tag=this] positioned as @s positioned ^ ^ ^12 as @e[distance=..40,team=!Blue,tag=Battle] run tag @s add 110fireball_target
execute as @e[tag=this] positioned as @s positioned ^ ^ ^12 at @e[tag=110fireball_target,limit=1,sort=nearest] run summon armor_stand ~ ~ ~ {Tags:["110fireball_target_dummy"],Marker:1b,NoGravity:1b,Invisible:1b}
execute as @e[tag=this] at @s facing entity @e[tag=110fireball_target_dummy,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ ~
kill @e[tag=110fireball_target_dummy]
tag @e[tag=110fireball_target] remove 110fireball_target
tag @s remove 110fireball_addable

tag @e[tag=this] remove this
data merge block -52 61 -60 {auto:1b}