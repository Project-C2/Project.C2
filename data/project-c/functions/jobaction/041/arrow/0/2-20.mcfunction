scoreboard players add @s counter_2 2
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s counter_2
particle minecraft:item_snowball ~ ~ ~ 2 0.2 2 1 10 normal @a
particle minecraft:falling_dust packed_ice ~ ~ ~ 3 0.2 3 1 5 normal @a
playsound minecraft:block.glass.break master @a ~ ~ ~ 1.5 2
execute if entity @s[tag=041-stand-red] run effect give @e[team=!Red,tag=Battle,distance=..3] minecraft:slowness 5 3
#execute if entity @s[tag=041-stand-red] run effect give @e[team=!Red,tag=Battle,distance=..3] minecraft:wither 6 0
execute if entity @s[tag=041-stand-blue] run effect give @e[team=!Blue,tag=Battle,distance=..3] minecraft:slowness 5 3
#execute if entity @s[tag=041-stand-blue] run effect give @e[team=!Blue,tag=Battle,distance=..3] minecraft:wither 6 0
execute rotated as @s rotated ~ 0 run function project-c:jobaction/041/arrow/0/2-hexa
execute rotated as @s rotated ~180 0 run function project-c:jobaction/041/arrow/0/2-hexa
