particle minecraft:dust 1 0 1 1 ~ ~1 ~ 0.4 0.4 0.4 1 1 force @a

execute if entity @s[tag=101spotterRed] if entity @e[team=Blue,distance=..2,limit=1,sort=nearest,tag=Battle] run teleport @s @e[team=Blue,limit=1,sort=random,tag=Battle]
execute if entity @s[tag=101spotterRed] if entity @e[team=Blue,distance=..2,limit=1,sort=nearest,tag=Battle] run effect give @e[team=Blue,distance=..2,limit=1,sort=nearest,tag=Battle] glowing 1 0

execute if entity @s[tag=101spotterBlue] if entity @e[team=Red,distance=..2,limit=1,sort=nearest,tag=Battle] run teleport @s @e[team=Red,limit=1,sort=random,tag=Battle]
execute if entity @s[tag=101spotterBlue] if entity @e[team=Red,distance=..2,limit=1,sort=nearest,tag=Battle] run effect give @e[team=Red,distance=..2,limit=1,sort=nearest,tag=Battle] glowing 1 0

execute if entity @s[tag=101spotterRed] unless entity @e[team=Blue,distance=..2,limit=1,sort=nearest,tag=Battle] run kill @s
execute if entity @s[tag=101spotterBlue] unless entity @e[team=Red,distance=..2,limit=1,sort=nearest,tag=Battle] run kill @s