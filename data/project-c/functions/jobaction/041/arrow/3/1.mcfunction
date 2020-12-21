#s      -> standの略
#ef     -> effectの略

execute as @e[tag=041-crimson] at @s run kill @e[tag=041-crimson-s,distance=..4.5]
execute if entity @e[tag=041-crimson-s] as @e[tag=041-crimson-s] at @s run function project-c:jobaction/041/arrow/3/2
execute at @e[tag=041-crimson,tag=041-red] run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:20,Tags:["041-crimson-s","041-stand-red"]}
execute at @e[tag=041-crimson,tag=041-blue] run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:20,Tags:["041-crimson-s","041-stand-blue"]}
execute as @e[tag=041-crimson] at @s store result entity @e[tag=041-crimson-s,limit=1,distance=..0.01] Rotation[0] float 0.1 run scoreboard players get @s counter_1