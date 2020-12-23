data merge entity @s {Effects:[{}],Potion:"minecraft:strong_harming",Age:4,Duration:5,ReapplicationDelay:0,WaitTime:1,Radius:3.8f}
particle minecraft:sweep_attack ~ ~ ~ 1.5 0.2 1.5 1 32 normal @a
particle minecraft:sweep_attack ~ ~ ~ 1.5 0 1.5 1 8 force @a
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1.5 1
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1.5 0.75
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1.5 0.5
tag @s add 067-2cloud

execute unless entity @e[tag=067-2,limit=1] run data merge block -47 2 31 {auto:0b}