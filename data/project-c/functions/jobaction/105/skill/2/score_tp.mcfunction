execute if score #105- counter_1 matches ..-1 run scoreboard players operation #105- counter_1 *= #-1 counter

#スコア1につき0.02ブロック前方にtp
execute if score #105- counter_1 matches 32.. positioned as @s run tp @s ^ ^ ^0.64
execute if score #105- counter_1 matches 32.. run scoreboard players remove #105- counter_1 32
execute if score #105- counter_1 matches 16.. positioned as @s run tp @s ^ ^ ^0.32
execute if score #105- counter_1 matches 16.. run scoreboard players remove #105- counter_1 16
execute if score #105- counter_1 matches 8.. positioned as @s run tp @s ^ ^ ^0.16
execute if score #105- counter_1 matches 8.. run scoreboard players remove #105- counter_1 8
execute if score #105- counter_1 matches 4.. positioned as @s run tp @s ^ ^ ^0.08
execute if score #105- counter_1 matches 4.. run scoreboard players remove #105- counter_1 4
execute if score #105- counter_1 matches 2.. positioned as @s run tp @s ^ ^ ^0.04
execute if score #105- counter_1 matches 2.. run scoreboard players remove #105- counter_1 2
execute if score #105- counter_1 matches 1.. positioned as @s run tp @s ^ ^ ^0.02


