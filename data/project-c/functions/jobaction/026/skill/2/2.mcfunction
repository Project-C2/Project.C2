execute if entity @s[tag=026-SaxeR] positioned as @s positioned as @e[tag=Battle,distance=..2,team=!Red,limit=1] run summon arrow ~ ~0.5 ~ {Tags:["026-summonArrow"],life:1200s,damage:3.0d}
execute if entity @s[tag=026-SaxeB] positioned as @s positioned as @e[tag=Battle,distance=..2,team=!Blue,limit=1] run summon arrow ~ ~0.5 ~ {Tags:["026-summonArrow"],life:1200s,damage:3.0d}
execute if entity @s[tag=026-GaxeR] positioned as @s positioned as @e[tag=Battle,distance=..2.2,team=!Red,limit=1] run summon arrow ~ ~0.5 ~ {Tags:["026-summonArrow"],life:1200s,damage:3.5d,Fire:32767s}
execute if entity @s[tag=026-GaxeB] positioned as @s positioned as @e[tag=Battle,distance=..2.2,team=!Blue,limit=1] run summon arrow ~ ~0.5 ~ {Tags:["026-summonArrow"],life:1200s,damage:3.5d,Fire:32767s}
execute store result entity @e[tag=026-summonArrow,limit=1] Motion[0] double 0.01 run data get entity @s Motion[0] 200
execute store result entity @e[tag=026-summonArrow,limit=1] Motion[1] double 0.01 run data get entity @s Motion[1] 200
execute store result entity @e[tag=026-summonArrow,limit=1] Motion[2] double 0.01 run data get entity @s Motion[2] 200
execute as @e[tag=026-summonArrow,limit=1] store result score @s counter_1 run data get entity @s Pos[0] 100
execute as @e[tag=026-summonArrow,limit=1] store result score @s counter_2 run data get entity @s Pos[1] 100
execute as @e[tag=026-summonArrow,limit=1] store result score @s counter_3 run data get entity @s Pos[2] 100
execute store result score @e[tag=026-summonArrow,limit=1] CT1 run data get entity @s Motion[0] 100
execute store result score @e[tag=026-summonArrow,limit=1] CT2 run data get entity @s Motion[1] 100
execute store result score @e[tag=026-summonArrow,limit=1] CT3 run data get entity @s Motion[2] 100
execute as @e[tag=026-summonArrow,limit=1] run scoreboard players operation @s counter_1 -= @s CT1
execute as @e[tag=026-summonArrow,limit=1] run scoreboard players operation @s counter_2 -= @s CT2
execute as @e[tag=026-summonArrow,limit=1] run scoreboard players operation @s counter_3 -= @s CT3
execute as @e[tag=026-summonArrow,limit=1] store result entity @s Pos[0] double 0.01 run scoreboard players get @s counter_1
execute as @e[tag=026-summonArrow,limit=1] store result entity @s Pos[1] double 0.01 run scoreboard players get @s counter_2
execute as @e[tag=026-summonArrow,limit=1] store result entity @s Pos[2] double 0.01 run scoreboard players get @s counter_3
tag @e[tag=026-summonArrow] remove 026-summonArrow
kill @s