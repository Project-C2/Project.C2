#counterは初期値-300..-3の範囲
#最大値420付近 としたスコア分tpを利用
scoreboard players add @s counter 420
execute if score @s counter matches 256.. run tp @s ^ ^ ^2.56
execute if score @s counter matches 256.. run scoreboard players remove @s counter 256
execute if score @s counter matches 128.. at @s run tp @s ^ ^ ^1.28
execute if score @s counter matches 128.. run scoreboard players remove @s counter 128
execute if score @s counter matches 064.. at @s run tp @s ^ ^ ^0.64
execute if score @s counter matches 064.. run scoreboard players remove @s counter 64
execute if score @s counter matches 032.. at @s run tp @s ^ ^ ^0.32
execute if score @s counter matches 032.. run scoreboard players remove @s counter 32
execute if score @s counter matches 016.. at @s run tp @s ^ ^ ^0.16
execute if score @s counter matches 016.. run scoreboard players remove @s counter 16
execute if score @s counter matches 008.. at @s run tp @s ^ ^ ^0.08
execute if score @s counter matches 008.. run scoreboard players remove @s counter 8
execute if score @s counter matches 004.. at @s run tp @s ^ ^ ^0.04
execute if score @s counter matches 004.. run scoreboard players remove @s counter 4
execute if score @s counter matches 002.. at @s run tp @s ^ ^ ^0.02
execute if score @s counter matches 002.. run scoreboard players remove @s counter 2
execute if score @s counter matches 001.. at @s run tp @s ^ ^ ^0.01
execute if score @s counter matches 001.. run scoreboard players remove @s counter 1




