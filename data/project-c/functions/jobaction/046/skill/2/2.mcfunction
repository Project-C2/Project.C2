scoreboard players add @s counter 1
scoreboard players add @s counter_1 1
kill @s[scores={counter=100..}]
execute if entity @s[scores={counter_1=1}] run summon spectral_arrow ~ ~ ~ {NoGravity:0b,life:1200,Motion:[1.0,0.0,0.0]}
execute if entity @s[scores={counter_1=2}] run summon spectral_arrow ~ ~ ~ {NoGravity:0b,life:1200,Motion:[1.0,0.0,1.0]}
execute if entity @s[scores={counter_1=3}] run summon spectral_arrow ~ ~ ~ {NoGravity:0b,life:1200,Motion:[0.0,0.0,1.0]}
execute if entity @s[scores={counter_1=4}] run summon spectral_arrow ~ ~ ~ {NoGravity:0b,life:1200,Motion:[-1.0,0.0,1.0]}
execute if entity @s[scores={counter_1=5}] run summon spectral_arrow ~ ~ ~ {NoGravity:0b,life:1200,Motion:[-1.0,0.0,0.0]}
execute if entity @s[scores={counter_1=6}] run summon spectral_arrow ~ ~ ~ {NoGravity:0b,life:1200,Motion:[-1.0,0.0,-1.0]}
execute if entity @s[scores={counter_1=7}] run summon spectral_arrow ~ ~ ~ {NoGravity:0b,life:1200,Motion:[0.0,0.0,-1.0]}
execute if entity @s[scores={counter_1=8}] run summon spectral_arrow ~ ~ ~ {NoGravity:0b,life:1200,Motion:[1.0,0.0,-1.0]}
scoreboard players set @s[scores={counter_1=8}] counter_1 0