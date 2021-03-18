scoreboard players add @s counter 1

execute if entity @s[scores={counter_2=0}] run particle dust 1 0 0 1 ^ ^ ^1 0 0 0 1 0
execute if entity @s[scores={counter_2=0}] run particle dust 1 0 0 1 ^ ^ ^-1 0 0 0 1 0
execute if entity @s[scores={counter_2=0}] run particle dust 1 0 0 1 ^1 ^ ^ 0 0 0 1 0
execute if entity @s[scores={counter_2=0}] run particle dust 1 0 0 1 ^-1 ^ ^ 0 0 0 1 0

execute if entity @s[scores={counter_2=1}] run particle dust 1 1 0 1 ^ ^ ^1 0 0 0 1 0
execute if entity @s[scores={counter_2=1}] run particle dust 1 1 0 1 ^ ^ ^-1 0 0 0 1 0
execute if entity @s[scores={counter_2=1}] run particle dust 1 1 0 1 ^1 ^ ^ 0 0 0 1 0
execute if entity @s[scores={counter_2=1}] run particle dust 1 1 0 1 ^-1 ^ ^ 0 0 0 1 0

execute if entity @s[scores={counter_2=2}] run particle dust 0 1 0 1 ^ ^ ^1 0 0 0 1 0
execute if entity @s[scores={counter_2=2}] run particle dust 0 1 0 1 ^ ^ ^-1 0 0 0 1 0
execute if entity @s[scores={counter_2=2}] run particle dust 0 1 0 1 ^1 ^ ^ 0 0 0 1 0
execute if entity @s[scores={counter_2=2}] run particle dust 0 1 0 1 ^-1 ^ ^ 0 0 0 1 0

execute if entity @s[scores={counter_2=3}] run particle dust 0 1 0 1 ^ ^ ^1 0 0 0 1 0
execute if entity @s[scores={counter_2=3}] run particle dust 0 1 0 1 ^ ^ ^-1 0 0 0 1 0
execute if entity @s[scores={counter_2=3}] run particle dust 0 1 0 1 ^1 ^ ^ 0 0 0 1 0
execute if entity @s[scores={counter_2=3}] run particle dust 0 1 0 1 ^-1 ^ ^ 0 0 0 1 0

execute if entity @s[scores={counter_2=4}] run particle dust 0 1 1 1 ^ ^ ^1 0 0 0 1 0
execute if entity @s[scores={counter_2=4}] run particle dust 0 1 1 1 ^ ^ ^-1 0 0 0 1 0
execute if entity @s[scores={counter_2=4}] run particle dust 0 1 1 1 ^1 ^ ^ 0 0 0 1 0
execute if entity @s[scores={counter_2=4}] run particle dust 0 1 1 1 ^-1 ^ ^ 0 0 0 1 0

execute if entity @s[scores={counter_2=5}] run particle dust 0 0 1 1 ^ ^ ^1 0 0 0 1 0
execute if entity @s[scores={counter_2=5}] run particle dust 0 0 1 1 ^ ^ ^-1 0 0 0 1 0
execute if entity @s[scores={counter_2=5}] run particle dust 0 0 1 1 ^1 ^ ^ 0 0 0 1 0
execute if entity @s[scores={counter_2=5}] run particle dust 0 0 1 1 ^-1 ^ ^ 0 0 0 1 0

execute if entity @s[scores={counter_2=6}] run particle dust 1 0.5 0 1 ^ ^ ^1 0 0 0 1 0
execute if entity @s[scores={counter_2=6}] run particle dust 1 0.5 0 1 ^ ^ ^-1 0 0 0 1 0
execute if entity @s[scores={counter_2=6}] run particle dust 1 0.5 0 1 ^1 ^ ^ 0 0 0 1 0
execute if entity @s[scores={counter_2=6}] run particle dust 1 0.5 0 1 ^-1 ^ ^ 0 0 0 1 0

execute if entity @s[scores={counter=20..}] run summon minecraft:firework_rocket ^ ^ ^ {Life:1,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;250000]}]}}},ShotAtAngle:1b}
execute if entity @s[scores={counter=20..}] run particle end_rod ^ ^ ^ 0 0 0 0.5 10
teleport @s ~ ~ ~ ~5 ~

kill @s[scores={counter=20..}]