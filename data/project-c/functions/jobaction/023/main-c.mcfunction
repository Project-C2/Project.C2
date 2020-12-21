#実行者     -> コマブロ
#実行地点   -> コマブロ

scoreboard players add #023-manage counter 1
execute if score #023-manage counter matches 20.. run scoreboard players remove @a[scores={jobNumber=23,counter=1..}] counter 1
execute if score #023-manage counter matches 20.. run scoreboard players remove @a[scores={jobNumber=23,subcounter=1..}] subcounter 1
execute if score #023-manage counter matches 20.. run scoreboard players remove @a[scores={jobNumber=23,counter_1=1..}] counter_1 1
execute if score #023-manage counter matches 20.. run scoreboard players remove @a[scores={jobNumber=23,counter_2=1..}] counter_2 1
execute if score #023-manage counter matches 20.. run scoreboard players remove @a[scores={jobNumber=23,counter_3=1..}] counter_3 1

execute if score #023-manage counter matches 20.. run scoreboard players remove @a[scores={jobNumber=23,counter=1..},tag=023-30] counter 1
execute if score #023-manage counter matches 20.. run scoreboard players remove @a[scores={jobNumber=23,subcounter=1..},tag=023-31] subcounter 1
execute if score #023-manage counter matches 20.. run scoreboard players remove @a[scores={jobNumber=23,counter_1=1..},tag=023-32] counter_1 1
execute if score #023-manage counter matches 20.. run scoreboard players remove @a[scores={jobNumber=23,counter_2=1..},tag=023-33] counter_2 1
execute if score #023-manage counter matches 20.. run scoreboard players remove @a[scores={jobNumber=23,counter_3=1..},tag=023-34] counter_3 1

execute if score #023-manage counter matches 20.. run scoreboard players set #023-manage counter 0