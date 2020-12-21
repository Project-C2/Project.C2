scoreboard players add @s counter 1
execute if entity @s[team=RedDummy] if entity @e[tag=Battle,team=!Red,distance=..1.2] as @e[tag=Battle,team=!Red,distance=..1.2] run tag @s add 031-0hasHit
execute if entity @s[team=BlueDummy] if entity @e[tag=Battle,team=!Blue,distance=..1.2] as @e[tag=Battle,team=!Blue,distance=..1.2] run tag @s add 031-0hasHit
execute if entity @s[team=RedDummy] if entity @e[tag=Battle,team=!Red,distance=..3.0] as @e[tag=Battle,team=!Red,distance=..3.0] at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=031-shot,team=RedDummy,distance=..1.2] run tag @s add 031-0hasHit
execute if entity @s[team=BlueDummy] if entity @e[tag=Battle,team=!Blue,distance=..3.0] as @e[tag=Battle,team=!Blue,distance=..3.0] at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=031-shot,team=BlueDummy,distance=..1.2] run tag @s add 031-0hasHit
tp @s ^ ^ ^1
execute if entity @s[team=RedDummy] if entity @e[tag=Battle,team=!Red,distance=..1.2] as @e[tag=Battle,team=!Red,distance=..1.2] run tag @s add 031-0hasHit
execute if entity @s[team=BlueDummy] if entity @e[tag=Battle,team=!Blue,distance=..1.2] as @e[tag=Battle,team=!Blue,distance=..1.2] run tag @s add 031-0hasHit
execute if entity @s[team=RedDummy] if entity @e[tag=Battle,team=!Red,distance=..3.0] as @e[tag=Battle,team=!Red,distance=..3.0] at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=031-shot,team=RedDummy,distance=..1.2] run tag @s add 031-0hasHit
execute if entity @s[team=BlueDummy] if entity @e[tag=Battle,team=!Blue,distance=..3.0] as @e[tag=Battle,team=!Blue,distance=..3.0] at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=031-shot,team=BlueDummy,distance=..1.2] run tag @s add 031-0hasHit
execute if entity @e[tag=031-0hasHit,limit=1] at @a[scores={jobNumber=31}] if score @a[scores={jobNumber=31},distance=..0.01,limit=1,sort=nearest] playerNumber = @s playerNumber as @a[tag=031-0hasHit] run scoreboard players operation @a[scores={jobNumber=31},distance=..0.01,limit=1,sort=nearest] counter_3 = @s playerNumber
execute if entity @e[tag=031-0hasHit,limit=1] run tag @a[tag=031-0hasHit] add 031-0tDeath
execute if entity @e[tag=031-0hasHit,limit=1] run effect give @e[tag=031-0hasHit] instant_damage 1 0
execute if entity @e[tag=031-0hasHit,limit=1] run scoreboard players set @s counter 100
execute if entity @e[tag=031-0hasHit,limit=1] run particle dust 0.8 0 0 4 ^ ^ ^2 2.2 2.2 2.2 1 100 normal @a
execute if entity @e[tag=031-0hasHit,limit=1] run particle dust 0.8 0 0 4 ^ ^ ^2 2.2 2.2 2.2 1 20 force @a
execute if entity @e[tag=031-0hasHit,limit=1] run playsound minecraft:entity.blaze.hurt master @a ^ ^ ^2 2 0.5
execute if entity @e[tag=031-0hasHit,limit=1] run playsound minecraft:entity.zombie.infect master @a ^ ^ ^2 2 1.4
execute if entity @e[tag=031-0hasHit,limit=1] run playsound minecraft:entity.zombie.infect master @a ^ ^ ^2 2 1.4
execute if entity @e[tag=031-0hasHit,limit=1] run tag @e[tag=031-0hasHit] remove 031-0hasHit

tp @s ^ ^ ^2
particle minecraft:sweep_attack ^ ^ ^2 0.6 0.6 0.6 1 12 normal @a
particle minecraft:sweep_attack ^ ^ ^2 0.6 0.6 0.6 1 3 force @a
particle dust 0.67 0 0 2 ^ ^ ^4 1 1 1 1 12 normal @a
particle dust 0.67 0 0 2 ^ ^ ^4 1 1 1 1 3 force @a
playsound minecraft:entity.player.attack.sweep master @a ^ ^ ^2 1.8 2

kill @s[scores={counter=100..}]