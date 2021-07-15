#> project-c:general/teamcheck
# data merge storage wnkm_check_hit: {option:Xb,including_myself:Yb}

# option:0 敵判定
# option:1 味方判定
# including_myself:0b 自傷なし(自身を含まない)
# including_myself:1b 自傷あり(自身を含む)

# 実行者:付与側
# 被付与側にはhitのタグを付与
# 判定を通す場合、hitのタグは残したまま
# 判定を通さない場合、hitのタグを除去

#playerNumberとteamNumberを取得
scoreboard players operation #wnkm_check_hit playerNumber = @s playerNumber
scoreboard players operation #wnkm_check_hit teamNumber = @s teamNumber
execute as @e[tag=hit] unless data entity @s Health run tag @s remove hit

#敵判定
execute if data storage wnkm_check_hit: {option:0b} if data storage wnkm_check_hit: {including_myself:0b} as @e[tag=hit] if score @s teamNumber = #wnkm_check_hit teamNumber run tag @s remove hit
execute if data storage wnkm_check_hit: {option:0b} if data storage wnkm_check_hit: {including_myself:1b} as @e[tag=hit] if score @s teamNumber = #wnkm_check_hit teamNumber unless score @s playerNumber = #wnkm_check_hit playerNumber run tag @s remove hit

#味方判定
execute if data storage wnkm_check_hit: {option:1b} as @e[tag=hit] unless score @s teamNumber = #wnkm_check_hit teamNumber run tag @s remove hit
execute if data storage wnkm_check_hit: {option:1b} if data storage wnkm_check_hit: {including_myself:0b} as @e[tag=hit] unless score @s playerNumber = #wnkm_check_hit playerNumber run tag @s remove hit

#後処理
scoreboard players reset #wnkm_check_hit