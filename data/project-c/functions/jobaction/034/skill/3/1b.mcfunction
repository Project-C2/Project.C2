scoreboard players set @s counter 101
execute if entity @s[team=RedDummy] run effect give @e[team=!Red,tag=Battle,distance=4.5..6.0] minecraft:resistance 1 0 true
execute if entity @s[team=RedDummy] run effect give @e[team=!Red,tag=Battle,distance=0.5..1.5] minecraft:resistance 1 0 true
execute if entity @s[team=RedDummy] run effect give @e[team=!Red,tag=Battle,distance=3.0..6.0] minecraft:instant_damage 1 0
execute if entity @s[team=RedDummy] run effect give @e[team=!Red,tag=Battle,distance=1.5..3.0] minecraft:instant_damage 1 1
execute if entity @s[team=RedDummy] run effect give @e[team=!Red,tag=Battle,distance=..1.5] minecraft:instant_damage 1 2
execute if entity @s[team=BlueDummy] run effect give @e[team=!Blue,tag=Battle,distance=4.5..6.0] minecraft:resistance 1 0 true
execute if entity @s[team=BlueDummy] run effect give @e[team=!Blue,tag=Battle,distance=0.5..1.5] minecraft:resistance 1 0 true
execute if entity @s[team=BlueDummy] run effect give @e[team=!Blue,tag=Battle,distance=3.0..6.0] minecraft:instant_damage 1 0
execute if entity @s[team=BlueDummy] run effect give @e[team=!Blue,tag=Battle,distance=1.5..3.0] minecraft:instant_damage 1 1
execute if entity @s[team=BlueDummy] run effect give @e[team=!Blue,tag=Battle,distance=..1.5] minecraft:instant_damage 1 2
particle minecraft:crit ~ ~ ~ 5.5 5.5 5.5 1 700 normal @a
particle minecraft:crit ~ ~ ~ 5.5 5.5 5.5 1 175 force @a
particle minecraft:block dirt ~ ~ ~ 5.5 5.5 5.5 0 1000 normal @a
particle minecraft:block dirt ~ ~ ~ 5.5 5.5 5.5 0 250 force @a
playsound minecraft:entity.wolf.howl master @a ~ ~ ~ 1.6 1.29
playsound minecraft:entity.wolf.howl master @a ~ ~ ~ 1.6 1.30
playsound minecraft:entity.wolf.howl master @a ~ ~ ~ 1.6 1.31
