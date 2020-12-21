# 実行者、実行地点は共にtpするエンティティ
# 距離スコアの入力は@s counter_3(0.01刻み)
# 距離は前方20.47ブロックまで対応

execute if score @s counter_3 matches 512.. at @s run tp @s ^ ^ ^5.12
execute if score @s counter_3 matches 512.. run scoreboard players remove @s counter_3 512
execute if score @s counter_3 matches 256.. at @s run tp @s ^ ^ ^2.56
execute if score @s counter_3 matches 256.. run scoreboard players remove @s counter_3 256
execute if score @s counter_3 matches 128.. at @s run tp @s ^ ^ ^1.28
execute if score @s counter_3 matches 128.. run scoreboard players remove @s counter_3 128
execute if score @s counter_3 matches 64.. at @s run tp @s ^ ^ ^0.64
execute if score @s counter_3 matches 64.. run scoreboard players remove @s counter_3 64
execute if score @s counter_3 matches 32.. at @s run tp @s ^ ^ ^0.32
execute if score @s counter_3 matches 32.. run scoreboard players remove @s counter_3 32
execute if score @s counter_3 matches 16.. at @s run tp @s ^ ^ ^0.16
execute if score @s counter_3 matches 16.. run scoreboard players remove @s counter_3 16
execute if score @s counter_3 matches 8.. at @s run tp @s ^ ^ ^0.08
execute if score @s counter_3 matches 8.. run scoreboard players remove @s counter_3 8
execute if score @s counter_3 matches 4.. at @s run tp @s ^ ^ ^0.04
execute if score @s counter_3 matches 4.. run scoreboard players remove @s counter_3 4
execute if score @s counter_3 matches 2.. at @s run tp @s ^ ^ ^0.02
execute if score @s counter_3 matches 2.. run scoreboard players remove @s counter_3 2
execute if score @s counter_3 matches 1.. at @s run tp @s ^ ^ ^0.01
execute if score @s counter_3 matches 1.. run scoreboard players remove @s counter_3 1
