execute if entity @s[team=RedDummy] run tag @e[team=Blue,tag=Battle,distance=..5.0] add 039-effect
execute if entity @s[team=BlueDummy] run tag @e[team=Red,tag=Battle,distance=..5.0] add 039-effect
execute if entity @e[tag=039-effect] run effect give @e[tag=039-effect] minecraft:blindness 3 0
execute if entity @e[tag=039-effect] run effect give @e[tag=039-effect] minecraft:glowing 6 0
execute if entity @e[tag=039-effect] run effect give @e[tag=039-effect] minecraft:night_vision 10 0
tag @e[tag=039-effect] remove 039-effect
particle minecraft:firework ~ ~ ~ 3 0 3 0.5 90 normal @a
particle minecraft:firework ~ ~ ~ 3 0 3 0.5 30 force @a
particle minecraft:firework ~ ~ ~ 1 1 1 0.1 150 normal @a
particle minecraft:firework ~ ~ ~ 1 1 1 0.1 50 force @a
playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1.2 2
kill @s
