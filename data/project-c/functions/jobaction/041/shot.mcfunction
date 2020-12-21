execute anchored eyes positioned ^ ^ ^ as @e[type=arrow,limit=1,sort=nearest,distance=..3.5,tag=!041-shoted] if entity @s[nbt={CustomPotionEffects:[{Ambient:0b,ShowParticles:0b,Duration:1,Id:26b,Amplifier:97b}]}] run tag @s add 041-diamond
execute anchored eyes positioned ^ ^ ^ as @e[type=arrow,limit=1,sort=nearest,distance=..3.5,tag=!041-shoted] if entity @s[nbt={CustomPotionEffects:[{Ambient:0b,ShowParticles:0b,Duration:1,Id:27b,Amplifier:97b}]}] run tag @s add 041-cardinal
execute anchored eyes positioned ^ ^ ^ as @e[type=arrow,limit=1,sort=nearest,distance=..3.5,tag=!041-shoted] if entity @s[nbt={CustomPotionEffects:[{Ambient:0b,ShowParticles:0b,Duration:0,Id:26b,Amplifier:97b}]}] run tag @s add 041-inferno
execute anchored eyes positioned ^ ^ ^ as @e[type=arrow,limit=1,sort=nearest,distance=..3.5,tag=!041-shoted] if entity @s[nbt={CustomPotionEffects:[{Ambient:0b,ShowParticles:0b,Duration:0,Id:27b,Amplifier:97b}]}] run tag @s add 041-crimson
execute if entity @s[team=Red] anchored eyes positioned ^ ^ ^ as @e[type=arrow,limit=1,sort=nearest,distance=..3.5,tag=!041-shoted] run tag @s add 041-red
execute if entity @s[team=Blue] anchored eyes positioned ^ ^ ^ as @e[type=arrow,limit=1,sort=nearest,distance=..3.5,tag=!041-shoted] run tag @s add 041-blue
execute anchored eyes positioned ^ ^ ^ store result score @e[type=arrow,limit=1,sort=nearest,distance=..3.5,tag=!041-shoted] counter_1 run data get entity @s Rotation[0] 10
execute anchored eyes positioned ^ ^ ^ as @e[type=arrow,limit=1,sort=nearest,distance=..3.5,tag=!041-shoted] run tag @s add 041-shoted
execute if entity @e[tag=041-diamond,limit=1] run data merge block 117 5 -71 {auto:1b}
execute if entity @e[tag=041-cardinal,limit=1] run data merge block 119 5 -71 {auto:1b}
execute if entity @e[tag=041-inferno,limit=1] run data merge block 121 5 -71 {auto:1b}
execute if entity @e[tag=041-crimson,limit=1] run data merge block 123 5 -71 {auto:1b}
