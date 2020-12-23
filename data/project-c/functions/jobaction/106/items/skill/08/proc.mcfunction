#スキル8
playsound minecraft:entity.generic.eat master @a ~ ~1 ~ 0.1 0
playsound minecraft:particle.soul_escape master @a ~ ~1 ~ 2 0
particle block soul_sand ~ ~1 ~ 2 2 2 0.1 10 force


execute if entity @s[tag=106-SoulCurse-Red] run particle dust 1 0 0 2 ~ ~1 ~ 0 0.2 0 0 1 force @a
execute if entity @s[tag=106-SoulCurse-Blue] run particle dust 0 0 1 2 ~ ~1 ~ 0 0.2 0 0 1 force @a

execute if entity @s[tag=106-SoulCurse-Red] positioned ~ ~1 ~ as @e[tag=Battle,team=!Red,distance=..5] run effect give @s wither 1 2 true
execute if entity @s[tag=106-SoulCurse-Blue] positioned ~ ~1 ~ as @e[tag=Battle,team=!Blue,distance=..5] run effect give @s wither 1 2 true
