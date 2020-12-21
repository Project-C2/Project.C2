scoreboard players add @s counter 1
execute if score @s counter matches 16.. run kill @s
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.5 2
#演出
particle minecraft:explosion ^ ^ ^1.05 0 0 0 0 1 force @a

particle minecraft:explosion ^ ^ ^3.15 0 0 0 0 1 force @a

#視線判定法を用いたターゲット指定
tag @s add 054dummy
execute if entity @s[team=RedDummy] as @e[distance=..4.5,tag=Battle,team=!Red,team=!RedDummy] positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=054dummy,limit=1] feet positioned ^ ^ ^50 if entity @s[distance=..1.3] run tag @s add 054-0hit
execute if entity @s[team=BlueDummy] as @e[distance=..4.5,tag=Battle,team=!Blue,team=!BlueDummy] positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=054dummy,limit=1] feet positioned ^ ^ ^50 if entity @s[distance=..1.3] run tag @s add 054-0hit
execute if entity @s[team=RedDummy] as @e[distance=..4.5,tag=Battle,team=!Red,team=!RedDummy,tag=!054-0hit] run function project-c:jobaction/054/skill/0/eyes-check
execute if entity @s[team=BlueDummy] as @e[distance=..4.5,tag=Battle,team=!Blue,team=!BlueDummy,tag=!054-0hit] run function project-c:jobaction/054/skill/0/eyes-check

#ダメージ処理等
execute if entity @e[tag=054-0hit,limit=1] as @e[tag=054-0hit] at @s run function project-c:jobaction/054/skill/0/hit
tag @s remove 054dummy

#ブロック判定でスコア増加
execute unless block ^ ^ ^0.4 #project-c:wancomatter/like_air run scoreboard players set @s counter 20
execute if score @s subcounter matches 6.. unless block ^ ^ ^1.2 #project-c:wancomatter/like_air run scoreboard players set @s counter 20
execute if score @s subcounter matches 10.. unless block ^ ^ ^2.0 #project-c:wancomatter/like_air run scoreboard players set @s counter 20
execute if score @s subcounter matches 14.. unless block ^ ^ ^2.8 #project-c:wancomatter/like_air run scoreboard players set @s counter 20
execute if score @s subcounter matches 18.. unless block ^ ^ ^3.6 #project-c:wancomatter/like_air run scoreboard players set @s counter 20

#スコアに応じたtp処理
tp @s ~ ~ ~
scoreboard players operation @s counter_1 = @s subcounter
execute if score @s counter_1 matches 21.. at @s run tp @s ^ ^ ^4.2
execute if score @s counter_1 matches 21.. run scoreboard players remove @s counter_1 21
execute if score @s counter_1 matches 16.. at @s run tp @s ^ ^ ^3.2
execute if score @s counter_1 matches 16.. run scoreboard players remove @s counter_1 16
execute if score @s counter_1 matches 8.. at @s run tp @s ^ ^ ^1.6
execute if score @s counter_1 matches 8.. run scoreboard players remove @s counter_1 8
execute if score @s counter_1 matches 4.. at @s run tp @s ^ ^ ^0.8
execute if score @s counter_1 matches 4.. run scoreboard players remove @s counter_1 4
execute if score @s counter_1 matches 2.. at @s run tp @s ^ ^ ^0.4
execute if score @s counter_1 matches 2.. run scoreboard players remove @s counter_1 2
execute if score @s counter_1 matches 1.. at @s run tp @s ^ ^ ^0.2