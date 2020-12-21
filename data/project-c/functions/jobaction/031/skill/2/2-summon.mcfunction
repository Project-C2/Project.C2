playsound minecraft:entity.bat.takeoff master @a ~ ~ ~ 3 2
summon bat ^ ^ ^2 {Tags:["Battle","031-necroBat","031-necroBatF"],Health:0.01f,NoAI:1b,Invulnerable:1b}
summon bat ^ ^ ^-2 {Tags:["Battle","031-necroBat","031-necroBatF"],Health:0.01f,NoAI:1b,Invulnerable:1b}
execute if entity @s[tag=031-necroCY] run summon bat ^2 ^ ^ {Tags:["Battle","031-necroBat","031-necroBatF"],Health:0.01f,NoAI:1b,Invulnerable:1b}
execute if entity @s[tag=031-necroCY] run summon bat ^-2 ^ ^ {Tags:["Battle","031-necroBat","031-necroBatF"],Health:0.01f,NoAI:1b,Invulnerable:1b}
execute if entity @s[tag=031-necroCXZ] run summon bat ^ ^2 ^ {Tags:["Battle","031-necroBat","031-necroBatF"],Health:0.01f,NoAI:1b,Invulnerable:1b}
execute if entity @s[tag=031-necroCXZ] run summon bat ^ ^-2 ^ {Tags:["Battle","031-necroBat","031-necroBatF"],Health:0.01f,NoAI:1b,Invulnerable:1b}
execute if entity @s[tag=031-necroC+1] as @e[type=bat,tag=031-necroBatF] run data merge entity @s {Rotation:[90f,0f]}
execute if entity @s[tag=031-necroC-1] as @e[type=bat,tag=031-necroBatF] run data merge entity @s {Rotation:[-90f,0f]}
execute if entity @s[tag=031-necroC+2] as @e[type=bat,tag=031-necroBatF] run data merge entity @s {Rotation:[0f,90f]}
execute if entity @s[tag=031-necroC-2] as @e[type=bat,tag=031-necroBatF] run data merge entity @s {Rotation:[0f,-90f]}
execute if entity @s[tag=031-necroC+3] as @e[type=bat,tag=031-necroBatF] run data merge entity @s {Rotation:[180f,0f]}
execute if entity @s[tag=031-necroC-3] as @e[type=bat,tag=031-necroBatF] run data merge entity @s {Rotation:[0f,0f]}
execute if entity @s[team=RedDummy] run team join Red @e[tag=031-necroBatF]
execute if entity @s[team=BlueDummy] run team join Blue @e[tag=031-necroBatF]
scoreboard players operation @e[tag=031-necroBatF] playerNumber = @s playerNumber
execute positioned as @e[tag=031-necroBatF] run particle minecraft:explosion ~ ~ ~ 0 0 0 1 1 normal @a
execute at @e[type=bat,tag=031-necroBatF] run scoreboard players operation @e[type=bat,tag=031-necroBatF,limit=1,distance=..0.01,sort=nearest] counter_1 = @s counter
tag @e[tag=031-necroBatF] remove 031-necroBatF
data merge block 1 5 -69 {auto:1b}
scoreboard players set @s counter_1 0