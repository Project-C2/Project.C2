summon arrow ~ ~ ~ {Tags:["124first","Arrow"],damage:1.0d,Color:3643790,life:1200s}
scoreboard players operation @s subcounter = @s counter

tp @e[tag=124arrow_vector,limit=1] 0.0 0.0 0.0 ~ ~
execute if score @s subcounter matches 256.. as @e[tag=124arrow_vector,limit=1] at @s run tp @s ^ ^ ^2.56
execute if score @s subcounter matches 256.. run scoreboard players remove @s subcounter 256

execute if score @s subcounter matches 128.. as @e[tag=124arrow_vector,limit=1] at @s run tp @s ^ ^ ^1.28
execute if score @s subcounter matches 128.. run scoreboard players remove @s subcounter 128

execute if score @s subcounter matches 064.. as @e[tag=124arrow_vector,limit=1] at @s run tp @s ^ ^ ^0.64
execute if score @s subcounter matches 064.. run scoreboard players remove @s subcounter 064

execute if score @s subcounter matches 032.. as @e[tag=124arrow_vector,limit=1] at @s run tp @s ^ ^ ^0.32
execute if score @s subcounter matches 032.. run scoreboard players remove @s subcounter 032

execute if score @s subcounter matches 016.. as @e[tag=124arrow_vector,limit=1] at @s run tp @s ^ ^ ^0.16
execute if score @s subcounter matches 016.. run scoreboard players remove @s subcounter 016

execute if score @s subcounter matches 008.. as @e[tag=124arrow_vector,limit=1] at @s run tp @s ^ ^ ^0.08
execute if score @s subcounter matches 008.. run scoreboard players remove @s subcounter 008

execute if score @s subcounter matches 004.. as @e[tag=124arrow_vector,limit=1] at @s run tp @s ^ ^ ^0.04
execute if score @s subcounter matches 004.. run scoreboard players remove @s subcounter 004

execute if score @s subcounter matches 002.. as @e[tag=124arrow_vector,limit=1] at @s run tp @s ^ ^ ^0.02
execute if score @s subcounter matches 002.. run scoreboard players remove @s subcounter 002

execute if score @s subcounter matches 001.. as @e[tag=124arrow_vector,limit=1] at @s run tp @s ^ ^ ^0.01

data modify entity @e[type=arrow,limit=1,tag=124first] Motion set from entity @e[tag=124arrow_vector,limit=1] Pos
data modify entity @e[type=arrow,limit=1,tag=124first] Owner set from entity @s Owner
tag @e[type=arrow,limit=1,tag=124first] remove 124first
