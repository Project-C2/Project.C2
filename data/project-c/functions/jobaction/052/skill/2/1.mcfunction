execute as @e[tag=052-4] at @s run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 0.75
execute as @e[tag=052-5] at @s run particle minecraft:sweep_attack ~ ~1.25 ~ 0.125 0 0.125 1 10
execute as @e[tag=052-5] at @s run summon arrow ~ ~2.5 ~ {damage:1.5d,Motion:[0.0,-2.0,0.0],life:1200,Color:-1}
execute if entity @e[tag=052-4,scores={counter_4=0..1}] as @e[tag=052-5] run scoreboard players add @a[tag=052-4] counter 9
execute if entity @e[tag=052-4,scores={counter_4=2..3}] as @e[tag=052-5] run scoreboard players add @a[tag=052-4] counter 6
execute if entity @e[tag=052-4,scores={counter_4=4..}] as @e[tag=052-5] run scoreboard players add @a[tag=052-4] counter 3
execute if entity @e[tag=052-5] run schedule function project-c:jobaction/052/skill/2/2 10t