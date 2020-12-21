#1tick前のAECとの座標の差があるかどうか判別
execute store result score @s counter_1 run data get entity @s Pos[0] 100000
execute store result score @s counter_2 run data get entity @s Pos[2] 100000
execute store result score @e[tag=088-1-position,tag=088-S1-stand,limit=1] counter_1 run data get entity @e[tag=088-1-position,tag=088-S1-stand,limit=1] Pos[0] 100000
execute store result score @e[tag=088-1-position,tag=088-S1-stand,limit=1] counter_2 run data get entity @e[tag=088-1-position,tag=088-S1-stand,limit=1] Pos[2] 100000

#一致するかどうかを調べ、counterに代入する
execute store success score @s counter if score @s counter_1 = @e[tag=088-1-position,tag=088-S1-stand,limit=1] counter_1 if score @s counter_2 = @e[tag=088-1-position,tag=088-S1-stand,limit=1] counter_2

#===================================================================================================
##一致する場合(counterは1)は、視点の先8ブロック以内に敵対Entityが存在するかどうか検知し、tp
#とりあえず失敗として実装
execute if score @s counter matches 1 run scoreboard players set @s counter -1

#===================================================================================================
#一致しない場合(counterは0)は移動方向へtpさせる
#1tick前の位置からプレイヤーの方向を向いて、プレイヤーの位置からy方向を無視した直進4ブロック分の位置を求め、その地点の一番上の空気ブロックを検知する

execute if score @s counter matches 0 run scoreboard players set @s counter_1 0

#移動先が空気だった場合(実行された場合,counterは3にする)
execute if score @s counter matches 0 positioned as @e[tag=088-1-position,tag=088-S1-stand,limit=1] facing entity @s feet rotated ~ 0 positioned as @s positioned ^ ^ ^6 if block ~ ~ ~ air run function project-c:jobaction/088/skill/1/0-1
#移動先が空気でなかった場合(counterは4にする)
execute if score @s counter matches 0 positioned as @e[tag=088-1-position,tag=088-S1-stand,limit=1] facing entity @s feet rotated ~ 0 positioned as @s positioned ^ ^ ^6 unless block ~ ~ ~ air run function project-c:jobaction/088/skill/1/0-2
#移動が成功している場合はcounter_1が15になっているはずなので、失敗している(counter_1が11になっている)場合、counterを-1にする
execute if score @s counter_1 matches 11..14 run scoreboard players set @s counter -1