execute if entity @s run particle end_rod ^ ^1 ^ 1 1 1 0.01 1 force @a

execute if entity @s[nbt={OnGround:1b}] run summon area_effect_cloud ^ ^1.5 ^ {Particle:"minecraft:mycelium",Radius:0.1f,Duration:5,Tags:["G-HorseAEC"]}
execute if entity @s[nbt={OnGround:1b}] run summon area_effect_cloud ^ ^1.5 ^1 {Particle:"minecraft:mycelium",Radius:0.1f,Duration:5,Tags:["G-HorseAEC"]}


execute if entity @e[tag=G-HorseAEC,distance=..0.3] if entity @s[nbt={OnGround:0b},tag=!G-HorseShot] run tag @s add G-HorseShot

execute anchored eyes if entity @s[team=Red,tag=G-HorseShot,tag=!G-HorseShoted] run summon armor_stand ^ ^1 ^1 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["060-0","060-0R","060-0Summoned"]}

execute anchored eyes if entity @s[team=Blue,tag=G-HorseShot,tag=!G-HorseShoted] run summon armor_stand ^ ^1 ^1 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["060-0","060-0B","060-0Summoned"]}

execute at @e[tag=060-0Summoned] rotated as @s run teleport @e[limit=1,sort=nearest,tag=060-0Summoned] ~ ~ ~ ~ ~
execute at @e[tag=060-0Summoned] as @s run particle minecraft:explosion ^ ^1 ^1 0 0 0 0 1 force @a
execute at @e[tag=060-0Summoned] as @s run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 1
execute at @e[tag=060-0Summoned] as @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 1.45
tag @e[tag=060-0Summoned] remove 060-0Summoned
execute if entity @e[tag=G-HorseAEC,distance=..0.5] if entity @s[nbt={OnGround:0b},tag=G-HorseShot] run tag @s add G-HorseShoted

data merge block 119 5 -20 {auto:1b}

tag @s[nbt={OnGround:1b},tag=G-HorseShot] remove G-HorseShot
tag @s[nbt={OnGround:1b},tag=G-HorseShoted] remove G-HorseShoted