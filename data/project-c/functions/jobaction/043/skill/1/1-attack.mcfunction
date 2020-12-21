execute store success score #043-dummy counter if block ^ ^ ^0.6 air run tp @s ^ ^ ^0.6
execute if score #043-dummy counter matches 1 store success score #043-dummy counter if block ^ ^ ^1.2 air run tp @s ^ ^ ^1.2
execute if score #043-dummy counter matches 1 store success score #043-dummy counter if block ^ ^ ^1.8 air run tp @s ^ ^ ^1.8
scoreboard players reset #043-dummy counter
execute at @s run particle minecraft:sweep_attack ~ ~ ~ 1 0 1 1 100 normal @a
playsound minecraft:block.anvil.place master @a ~ ~ ~ 1 2
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 2
execute if entity @s[team=Red] at @s run effect give @e[team=!Red,tag=Battle,distance=..3] wither 3 1
execute if entity @s[team=Blue] at @s run effect give @e[team=!Blue,tag=Battle,distance=..3] wither 3 1
execute at @s run summon vex ^3 ^ ^ {HandItems:[{id:"minecraft:iron_sword",Count:1b},{id:"minecraft:iron_sword",Count:1b}],BoundX:0,BoundY:0,BoundZ:0,LifeTicks:200,Attributes:[{Name:generic.maxHealth,Base:0.01},{Name:generic.attackDamage,Base:-2}],Health:0.01f,Tags:["043-first","Battle"]}
execute at @s run summon vex ^-3 ^ ^ {HandItems:[{id:"minecraft:iron_sword",Count:1b},{id:"minecraft:iron_sword",Count:1b}],BoundX:0,BoundY:0,BoundZ:0,LifeTicks:200,Attributes:[{Name:generic.maxHealth,Base:0.01},{Name:generic.attackDamage,Base:-2}],Health:0.01f,Tags:["043-first","Battle"]}
execute at @s run summon vex ^ ^3 ^ {HandItems:[{id:"minecraft:iron_sword",Count:1b},{id:"minecraft:iron_sword",Count:1b}],BoundX:0,BoundY:0,BoundZ:0,LifeTicks:200,Attributes:[{Name:generic.maxHealth,Base:0.01},{Name:generic.attackDamage,Base:-2}],Health:0.01f,Tags:["043-first","Battle"]}
execute at @s run summon vex ^ ^-3 ^ {HandItems:[{id:"minecraft:iron_sword",Count:1b},{id:"minecraft:iron_sword",Count:1b}],BoundX:0,BoundY:0,BoundZ:0,LifeTicks:200,Attributes:[{Name:generic.maxHealth,Base:0.01},{Name:generic.attackDamage,Base:-2}],Health:0.01f,Tags:["043-first","Battle"]}
execute at @e[tag=043-first] store result entity @e[tag=043-first,limit=1,sort=nearest,distance=..0.01] BoundX int 1 run data get entity @s Pos[0] 1
execute at @e[tag=043-first] store result entity @e[tag=043-first,limit=1,sort=nearest,distance=..0.01] BoundY int 1 run data get entity @s Pos[1] 1
execute at @e[tag=043-first] store result entity @e[tag=043-first,limit=1,sort=nearest,distance=..0.01] BoundZ int 1 run data get entity @s Pos[2] 1
execute if entity @s[team=Red] run team join Red @e[tag=043-first]
execute if entity @s[team=Blue] run team join Blue @e[tag=043-first]
tag @e[tag=043-first] remove 043-first