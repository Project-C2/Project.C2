#s      -> standの略
#ef     -> effectの略

execute as @e[tag=041-diamond] at @s run kill @e[tag=041-diamond-s,distance=..4.5]
execute if entity @e[tag=041-diamond-s,tag=041-stand-red] at @e[tag=041-diamond-s,tag=041-stand-red] run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:120,Tags:["041-diamond-ef","041-stand-red"]}
execute if entity @e[tag=041-diamond-s,tag=041-stand-blue] at @e[tag=041-diamond-s,tag=041-stand-blue] run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:120,Tags:["041-diamond-ef","041-stand-blue"]}
execute if entity @e[tag=041-diamond-s] run data merge block 117 5 -69 {auto:1b}
execute if entity @e[tag=041-diamond-s] run kill @e[tag=041-diamond-s]
execute at @e[tag=041-diamond,tag=041-red] run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:20,Tags:["041-diamond-s","041-stand-red"]}
execute at @e[tag=041-diamond,tag=041-blue] run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:20,Tags:["041-diamond-s","041-stand-blue"]}
