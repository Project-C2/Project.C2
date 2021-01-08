# 実行者 -> tag = Ramen
# 実行位置 -> 実行者
# counter -> SushiSpeed
# counter_1 -> RamenHeadRotation
# counter_2 -> ラーメンの持ち主のPlayerNumber
# counter_3 -> ラーメンの攻撃力
# counter_4 -> ラーメンの追加攻撃力
# StoredRamenRotation counter
# RamenRotation counter
# BladerRotation counter
# CurrentRamenRotation counter
# RamenTurnRotation counter 
# SushiAttackDamage counter
# BladerAttackDamage counter


tag @s add MovingRamen
execute as @a if score @s playerNumber = @e[tag=MovingRamen,limit=1] counter_2 run tag @s add DarkSushiBlader

tp @s ~ ~ ~ facing entity @a[tag=DarkSushiBlader,limit=1] eyes
execute unless entity @s[tag=Inverted] rotated as @s rotated ~180 0 run tp @s ~ ~ ~ ~ ~
execute store result score #StoredRamenRotation counter run data get entity @s Rotation[0] 10000
execute store result score #RamenRotation counter run data get entity @s Rotation[0]
execute if entity @s[tag=Inverted] run scoreboard players remove #RamenRotation counter 180
execute store result score #BladerRotation counter run data get entity @a[tag=DarkSushiBlader,limit=1] Rotation[0]
execute if score #RamenRotation counter matches ..-1 run scoreboard players add #RamenRotation counter 360
execute if score #BladerRotation counter matches ..-1 run scoreboard players add #BladerRotation counter 360
scoreboard players operation #RamenRotation counter -= #BladerRotation counter
execute if score #RamenRotation counter matches ..-181 run scoreboard players add #RamenRotation counter 360
execute if score #RamenRotation counter matches 181.. run scoreboard players remove #RamenRotation counter 360

# ラーメンが曲がる処理
execute unless score #RamenRotation counter matches -3..3 run function project-c:jobaction/114/skill/0/schedule_loop/2


scoreboard players operation #CurrentRamenRotation counter = #StoredRamenRotation counter
scoreboard players operation #CurrentRamenRotation counter += #RamenTurnRotation counter
execute store result entity @s Rotation[0] float 0.0001 run scoreboard players get #CurrentRamenRotation counter

scoreboard players set #RamenTurnRotation counter 0
execute unless block ^ ^ ^0.5 #project-c:wancomatter/like_air if block ^0.5 ^1 ^ #project-c:wancomatter/like_air if block ^-0.5 ^1 ^ #project-c:wancomatter/like_air if block ^ ^1 ^0.5 #project-c:wancomatter/like_air run function project-c:jobaction/114/skill/0/schedule_loop/4
execute rotated as @s run function project-c:jobaction/114/skill/0/schedule_loop/1


scoreboard players add @s counter_1 40
execute store result entity @s Pose.Head[1] float 1 run scoreboard players get @s counter_1
execute if score @s counter_1 matches 360.. run scoreboard players set @s counter_1 0

# ダメージ判定
execute if entity @s[team=RedDummy] if entity @e[team=Blue,distance=..2,nbt={HurtTime:0s},tag=Battle] run function project-c:jobaction/114/skill/0/schedule_loop/3
execute if entity @s[team=BlueDummy] if entity @e[team=Red,distance=..2,nbt={HurtTime:0s},tag=Battle] run function project-c:jobaction/114/skill/0/schedule_loop/3


tag @a[tag=DarkSushiBlader] remove DarkSushiBlader
tag @s remove MovingRamen



###演出
particle minecraft:sweep_attack ~ ~0.3 ~ 0 0 0 0 1
playsound minecraft:item.trident.riptide_3 master @a ~ ~ ~ 0.5 1.5
execute if score @s counter_4 matches 1.. run particle minecraft:flame ~ ~ ~ 0.3 0 0.3 0.1 20