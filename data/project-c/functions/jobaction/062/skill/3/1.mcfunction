scoreboard players remove @s subcounter 1
playsound minecraft:block.grass.break master @a ~ ~ ~ 0.5 0

execute if entity @s[scores={subcounter=9}] run execute positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^4 {Tags:["062dummy"],Marker:1b,Invisible:1b,Marker:1b}
execute if entity @s[scores={subcounter=9}] run execute anchored eyes run summon minecraft:armor_stand ^ ^ ^0.5 {Tags:["062eigous","062eigousF"],Invisible:1b}
execute if entity @s[scores={subcounter=9}] run data modify entity @e[tag=062eigousF,limit=1] Motion set from entity @e[tag=062dummy,limit=1] Pos
execute if entity @s[scores={subcounter=9}] run execute store result score @e[tag=062eigousF,limit=1] counter_1 run data get entity @s Rotation[0] 100
execute if entity @s[scores={subcounter=9}] run execute store result score @e[tag=062eigousF,limit=1] counter_2 run data get entity @s Rotation[1] 100
execute if entity @s[scores={subcounter=9}] run kill @e[tag=062dummy]
execute if entity @s[scores={subcounter=9}] run tag @e[tag=062eigousF] remove 062eigousF


execute if entity @s[scores={subcounter=1..9}] run execute as @e[tag=062eigous,distance=..5,limit=1] at @s run teleport @a[scores={jobNumber=62,subcounter=1..}] ~ ~ ~
execute as @s at @s run teleport @s[scores={subcounter=9..}] ^ ^ ^ ~ 0

execute if entity @s[scores={subcounter=1..9}] run particle explosion ~ ~1 ~ 0 0 0 0 1
execute if entity @s[scores={subcounter=1..9}] run particle sweep_attack ~ ~1 ~ 1 1 1 0 3

execute if entity @s[scores={subcounter=1..9},team=Red] run scoreboard players set @e[team=Blue,tag=Battle,distance=..4] eigou 100
execute if entity @s[scores={subcounter=1..9},team=Blue] run scoreboard players set @e[team=Red,tag=Battle,distance=..4] eigou 100

execute if entity @s[scores={subcounter=1..9},team=Red] run effect give @e[team=Blue,tag=Battle,distance=..4] slowness 3 8 true
execute if entity @s[scores={subcounter=1..9},team=Blue] run effect give @e[team=Red,tag=Battle,distance=..4] slowness 3 8 true

execute if entity @s[scores={subcounter=1..9},team=Red] run execute if entity @e[team=Blue,tag=Battle,distance=..4] run scoreboard players set @s Mana 120
execute if entity @s[scores={subcounter=1..9},team=Blue] run execute if entity @e[team=Red,tag=Battle,distance=..4] run scoreboard players set @s Mana 120

execute as @s[scores={subcounter=0,Mana=1..}] at @s run data merge block -105 5 31 {auto:1b}

execute if entity @s[scores={subcounter=0}] run effect clear @s night_vision
execute if entity @s[scores={subcounter=0}] run effect clear @s slowness
execute if entity @s[scores={subcounter=0}] run effect clear @s slow_falling