scoreboard players add @s counter 250
scoreboard players operation @s counter /= #2 counter
execute if score @s counter matches 301.. run scoreboard players set @s counter 300


tp @e[tag=124arrow_vector,limit=1] 0.0 0.0 0.0 ~ ~
execute if score @s counter matches 256.. as @e[tag=124arrow_vector,limit=1] at @s run tp @s ^ ^ ^2.56
execute if score @s counter matches 256.. run scoreboard players remove @s counter 256

execute if score @s counter matches 128.. as @e[tag=124arrow_vector,limit=1] at @s run tp @s ^ ^ ^1.28
execute if score @s counter matches 128.. run scoreboard players remove @s counter 128

execute if score @s counter matches 064.. as @e[tag=124arrow_vector,limit=1] at @s run tp @s ^ ^ ^0.64
execute if score @s counter matches 064.. run scoreboard players remove @s counter 064

execute if score @s counter matches 032.. as @e[tag=124arrow_vector,limit=1] at @s run tp @s ^ ^ ^0.32
execute if score @s counter matches 032.. run scoreboard players remove @s counter 032

execute if score @s counter matches 016.. as @e[tag=124arrow_vector,limit=1] at @s run tp @s ^ ^ ^0.16
execute if score @s counter matches 016.. run scoreboard players remove @s counter 016

execute if score @s counter matches 008.. as @e[tag=124arrow_vector,limit=1] at @s run tp @s ^ ^ ^0.08
execute if score @s counter matches 008.. run scoreboard players remove @s counter 008

execute if score @s counter matches 004.. as @e[tag=124arrow_vector,limit=1] at @s run tp @s ^ ^ ^0.04
execute if score @s counter matches 004.. run scoreboard players remove @s counter 004

execute if score @s counter matches 002.. as @e[tag=124arrow_vector,limit=1] at @s run tp @s ^ ^ ^0.02
execute if score @s counter matches 002.. run scoreboard players remove @s counter 002

execute if score @s counter matches 001.. as @e[tag=124arrow_vector,limit=1] at @s run tp @s ^ ^ ^0.01

data modify entity @s Motion set from entity @e[tag=124arrow_vector,limit=1] Pos
