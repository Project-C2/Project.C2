#> project-c:general/score_tp/local_x
# 実行者:   @s
# 実行地点: @s
# @sのcounter_1に応じた距離だけtp @s ^(counter_1)*0.01 ^ ^します
# @sのcounter_1は0になります

#スコア値がプラスかマイナスかで実行するfunctionを変えるだけ～
execute if score @s counter_1 matches 1.. run function project-c:general/score_tp/local_x1
execute if score @s counter_1 matches ..-1 run function project-c:general/score_tp/local_x2
