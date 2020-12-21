scoreboard players add @s counter 1
teleport @s ^ ^ ^0.5 ~7 ~


execute if entity @s[scores={counter=15}] run execute as @s[tag=086-zangekiR] run effect give @e[tag=Battle,limit=1,sort=nearest,team=Blue,distance=..4] instant_damage 1 0 true
execute if entity @s[scores={counter=15}] run execute as @s[tag=086-zangekiR] if entity @e[tag=Battle,limit=1,sort=nearest,team=Blue,distance=..3] run particle minecraft:end_rod ~ ~1 ~ 0 0 0 1 5 force @a
execute if entity @s[scores={counter=15}] run execute as @s[tag=086-zangekiR] if entity @e[tag=Battle,limit=1,sort=nearest,team=Blue,distance=..3] run playsound minecraft:block.glass.break master @a ~ ~ ~ 2 1.45

execute if entity @s[scores={counter=15}] run execute as @s[tag=086-zangekiB] run effect give @e[tag=Battle,limit=1,sort=nearest,team=Red,distance=..4] instant_damage 1 0 true
execute if entity @s[scores={counter=15}] run execute as @s[tag=086-zangekiB] if entity @e[tag=Battle,limit=1,sort=nearest,team=Red,distance=..3] run particle minecraft:end_rod ~ ~1 ~ 0 0 0 1 5 force @a
execute if entity @s[scores={counter=15}] run execute as @s[tag=086-zangekiB] if entity @e[tag=Battle,limit=1,sort=nearest,team=Red,distance=..3] run playsound minecraft:block.glass.break master @a ~ ~ ~ 2 1.45

execute if entity @s[scores={counter=30}] run execute as @s[tag=086-zangekiR] run effect give @e[tag=Battle,limit=1,sort=nearest,team=Blue,distance=..4] instant_damage 1 1 true
execute if entity @s[scores={counter=30}] run execute as @s[tag=086-zangekiR] if entity @e[tag=Battle,limit=1,sort=nearest,team=Blue,distance=..3] run particle minecraft:end_rod ~ ~1 ~ 0 0 0 1 5 force @a
execute if entity @s[scores={counter=30}] run execute as @s[tag=086-zangekiR] if entity @e[tag=Battle,limit=1,sort=nearest,team=Blue,distance=..3] run playsound minecraft:block.glass.break master @a ~ ~ ~ 2 1.45

execute if entity @s[scores={counter=30}] run execute as @s[tag=086-zangekiB] run effect give @e[tag=Battle,limit=1,sort=nearest,team=Red,distance=..4] instant_damage 1 1 true
execute if entity @s[scores={counter=30}] run execute as @s[tag=086-zangekiB] if entity @e[tag=Battle,limit=1,sort=nearest,team=Red,distance=..3] run particle minecraft:end_rod ~ ~1 ~ 0 0 0 1 5 force @a
execute if entity @s[scores={counter=30}] run execute as @s[tag=086-zangekiB] if entity @e[tag=Battle,limit=1,sort=nearest,team=Red,distance=..3] run playsound minecraft:block.glass.break master @a ~ ~ ~ 2 1.45



execute if entity @s[scores={counter=15}] run particle sweep_attack ~ ~ ~ 2 2 2 0.1 20 force
execute if entity @s[scores={counter=30}] run particle sweep_attack ~ ~ ~ 2 2 2 0.1 20 force

execute if entity @s[scores={counter=15}] run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 0
execute if entity @s[scores={counter=30}] run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 0
particle minecraft:firework ~ ~ ~ 0 0 0 0.1 1 force
kill @s[scores={counter=30..}]