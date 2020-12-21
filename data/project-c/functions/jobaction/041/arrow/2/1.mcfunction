#s      -> standの略
#ef     -> effectの略
#q      -> quickの略
#d      -> dummyの略

execute as @e[tag=041-inferno] at @s run kill @e[tag=041-inferno-s,distance=..4.5]
execute if entity @e[tag=041-inferno-s,tag=041-stand-red] at @e[tag=041-inferno-s,tag=041-stand-red] run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:120,Tags:["041-inferno-ef","041-stand-red"]}
execute if entity @e[tag=041-inferno-s,tag=041-stand-blue] at @e[tag=041-inferno-s,tag=041-stand-blue] run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:120,Tags:["041-inferno-ef","041-stand-blue"]}
execute if entity @e[tag=041-inferno-s,tag=041-inferno-q-d] at @e[tag=041-inferno-s,tag=041-inferno-q-d] as @e[tag=041-inferno-ef,limit=1,distance=..0.01] run tag @s add 041-inferno-q
execute if entity @e[tag=041-inferno-s] as @e[tag=041-inferno-s] at @s run tp @e[tag=041-inferno-ef,limit=1,distance=..0.01] ~ ~ ~ ~ ~
execute if entity @e[tag=041-inferno-s] run data merge block 121 5 -69 {auto:1b}
execute if entity @e[tag=041-inferno-s] run kill @e[tag=041-inferno-s]
execute at @e[tag=041-inferno,tag=041-red] run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:20,Tags:["041-inferno-s","041-stand-red"]}
execute at @e[tag=041-inferno,tag=041-blue] run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:20,Tags:["041-inferno-s","041-stand-blue"]}
execute as @e[tag=041-inferno] at @s run tp @e[tag=041-inferno-s,limit=1,distance=..0.01] ~ ~ ~ ~ ~
execute at @e[tag=041-inferno,tag=041-blaze] as @e[tag=041-inferno-s,limit=1,distance=..0.01] run tag @s add 041-inferno-q-d
