execute at @e[tag=041-blaze] as @e[tag=041-blaze-s,distance=..4.5] run kill @s
execute at @e[tag=041-blaze] run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:20,Tags:["041-blaze-s"]}
scoreboard players add @e[tag=041-blaze-s] counter 1
execute if entity @e[tag=041-blaze-s,scores={counter=2..}] as @e[tag=041-blaze-s,scores={counter=2..}] at @s run function project-c:jobaction/041/skill/2/1bomb
kill @e[tag=041-kill]