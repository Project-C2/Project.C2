execute if entity @s[tag=Red] if entity @e[team=Blue,tag=Battle,distance=..7] positioned as @e[team=Red,tag=Battle,distance=..7] run playsound minecraft:entity.skeleton.ambient master @a ~ ~ ~ 2 2
execute if entity @s[tag=Red] run effect give @e[team=Blue,tag=Battle,distance=..7] minecraft:glowing 1 0 true
execute if entity @s[tag=Red] run effect give @e[team=Blue,tag=Battle,distance=..7] minecraft:slowness 1 4 true

execute if entity @s[tag=Blue] if entity @e[team=Red,tag=Battle,distance=..7] positioned as @e[team=Red,tag=Battle,distance=..7] run playsound minecraft:entity.skeleton.ambient master @a ~ ~ ~ 2 2
execute if entity @s[tag=Blue] run effect give @e[team=Red,tag=Battle,distance=..7] minecraft:glowing 1 0 true
execute if entity @s[tag=Blue] run effect give @e[team=Red,tag=Battle,distance=..7] minecraft:slowness 1 4 true

particle smoke ~ ~ ~ 2 4 2 0 2