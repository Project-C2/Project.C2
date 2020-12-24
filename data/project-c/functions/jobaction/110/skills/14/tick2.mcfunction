#スコア増加
scoreboard players add @s counter 1
#演出
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.5 2
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a
particle minecraft:explosion ^ ^ ^1.33 0 0 0 0 1 normal @a
particle minecraft:explosion ^ ^ ^2.66 0 0 0 0 1 normal @a

#視線判定法を用いたターゲット指定
tag @s add 110dummy
execute if entity @s[team=RedDummy] as @e[distance=..4.5,tag=Battle,team=!Red,team=!RedDummy] positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=110dummy,limit=1] feet positioned ^ ^ ^50 if entity @s[distance=..1.3] run tag @s add hit
execute if entity @s[team=BlueDummy] as @e[distance=..4.5,tag=Battle,team=!Blue,team=!BlueDummy] positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=110dummy,limit=1] feet positioned ^ ^ ^50 if entity @s[distance=..1.3] run tag @s add hit
execute if entity @s[team=RedDummy] as @e[distance=..4.5,tag=Battle,team=!Red,team=!RedDummy,tag=!hit] run function project-c:jobaction/110/skills/14/eyes-check
execute if entity @s[team=BlueDummy] as @e[distance=..4.5,tag=Battle,team=!Blue,team=!BlueDummy,tag=!hit] run function project-c:jobaction/110/skills/14/eyes-check

#ダメージ処理等
execute if entity @e[tag=hit,limit=1] as @a[tag=anti_aircraft_using] if score @s playerNumber = @e[tag=110dummy,limit=1,sort=nearest] playerNumber run tag @s add user
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] at @s run function project-c:jobaction/110/skills/14/hit

#ブロック判定でスコア増加
execute unless block ^ ^ ^0.4 #project-c:wancomatter/like_air run scoreboard players set @s counter 20
execute if score @s subcounter matches 6.. unless block ^ ^ ^1.2 #project-c:wancomatter/like_air run scoreboard players set @s counter 20
execute if score @s subcounter matches 10.. unless block ^ ^ ^2.0 #project-c:wancomatter/like_air run scoreboard players set @s counter 20
execute if score @s subcounter matches 14.. unless block ^ ^ ^2.8 #project-c:wancomatter/like_air run scoreboard players set @s counter 20
execute if score @s subcounter matches 18.. unless block ^ ^ ^3.6 #project-c:wancomatter/like_air run scoreboard players set @s counter 20

#前方tp
tp @s ^ ^ ^4.0
#後処理
execute if score @s counter matches 16.. unless entity @a[tag=user,limit=1] as @a[tag=anti_aircraft_using] if score @s playerNumber = @e[tag=110dummy,limit=1,sort=nearest] playerNumber run tag @s add user
execute if score @s counter matches 16.. run tag @a[tag=user] remove anti_aircraft_using
execute if entity @a[tag=user,limit=1] run tag @a[tag=user] remove user
tag @s remove 110dummy
execute if score @s counter matches 16.. run kill @s
