# 実行者、実行地点は共に索敵側
# ターゲットにtarget_distanceのタグを付与する必要あり
# 距離スコアの出力は@s counter_3
# 距離は前方128ブロックまで対応

summon armor_stand ~ ~ ~ {Tags:["this__target"],Marker:1b,Invisible:1b,NoGravity:1b}
execute facing entity @e[tag=target_distance,limit=1,sort=nearest] feet run tp @e[tag=this__target] ~ ~ ~ ~ ~
execute at @e[tag=this__target] if entity @e[distance=64..128,tag=target_distance,limit=1,sort=nearest] run scoreboard players add @s counter_3 640
execute as @e[tag=this__target] at @s if entity @e[distance=64..128,tag=target_distance,limit=1,sort=nearest] run tp @s ^ ^ ^64
execute at @e[tag=this__target] if entity @e[distance=32..64,tag=target_distance,limit=1,sort=nearest] run scoreboard players add @s counter_3 320
execute as @e[tag=this__target] at @s if entity @e[distance=32..64,tag=target_distance,limit=1,sort=nearest] run tp @s ^ ^ ^32
execute at @e[tag=this__target] if entity @e[distance=16..32,tag=target_distance,limit=1,sort=nearest] run scoreboard players add @s counter_3 160
execute as @e[tag=this__target] at @s if entity @e[distance=16..32,tag=target_distance,limit=1,sort=nearest] run tp @s ^ ^ ^16
execute at @e[tag=this__target] if entity @e[distance=8..16,tag=target_distance,limit=1,sort=nearest] run scoreboard players add @s counter_3 80
execute as @e[tag=this__target] at @s if entity @e[distance=8..16,tag=target_distance,limit=1,sort=nearest] run tp @s ^ ^ ^8
execute at @e[tag=this__target] if entity @e[distance=4..8,tag=target_distance,limit=1,sort=nearest] run scoreboard players add @s counter_3 40
execute as @e[tag=this__target] at @s if entity @e[distance=4..8,tag=target_distance,limit=1,sort=nearest] run tp @s ^ ^ ^4
execute at @e[tag=this__target] if entity @e[distance=2..4,tag=target_distance,limit=1,sort=nearest] run scoreboard players add @s counter_3 20
execute as @e[tag=this__target] at @s if entity @e[distance=2..4,tag=target_distance,limit=1,sort=nearest] run tp @s ^ ^ ^2
execute at @e[tag=this__target] if entity @e[distance=1..2,tag=target_distance,limit=1,sort=nearest] run scoreboard players add @s counter_3 10
execute as @e[tag=this__target] at @s if entity @e[distance=1..2,tag=target_distance,limit=1,sort=nearest] run tp @s ^ ^ ^1
execute at @e[tag=this__target] if entity @e[distance=0.5..1,tag=target_distance,limit=1,sort=nearest] run scoreboard players add @s counter_3 5
execute as @e[tag=this__target] at @s if entity @e[distance=0.5..1,tag=target_distance,limit=1,sort=nearest] run tp @s ^ ^ ^0.5
execute at @e[tag=this__target] if entity @e[distance=0.3..0.5,tag=target_distance,limit=1,sort=nearest] run scoreboard players add @s counter_3 3
execute as @e[tag=this__target] at @s if entity @e[distance=0.3..0.5,tag=target_distance,limit=1,sort=nearest] run tp @s ^ ^ ^0.3
execute at @e[tag=this__target] if entity @e[distance=0.2..0.3,tag=target_distance,limit=1,sort=nearest] run scoreboard players add @s counter_3 2
execute as @e[tag=this__target] at @s if entity @e[distance=0.2..0.3,tag=target_distance,limit=1,sort=nearest] run tp @s ^ ^ ^0.2
execute at @e[tag=this__target] if entity @e[distance=0.1..0.2,tag=target_distance,limit=1,sort=nearest] run scoreboard players add @s counter_3 1

kill @e[tag=this__target]
tag @e[tag=target_distance] remove target_distance