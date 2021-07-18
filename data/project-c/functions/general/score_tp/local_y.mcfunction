#> project-c:general/score_tp/local_y
# 実行者:   @s
# 実行地点: @s
# @sのcounter_2に応じた距離だけtp @s ^(counter_2)*0.01 ^ ^します
# @sのcounter_2は0になります

#スコア値がプラスかマイナスかで実行するfunctionを変えるだけ～
execute if score @s counter_2 matches 1.. run function project-c:general/score_tp/local_y1
execute if score @s counter_2 matches ..-1 run function project-c:general/score_tp/local_y2
