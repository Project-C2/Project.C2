# 実行者　-> useCarrotStick = 1.. sneak = 1..
# 実行位置 -> 実行者
tag @s add RamenSummoner
execute as @e[tag=Ramen] if score @s counter_2 = @a[tag=RamenSummoner,limit=1] playerNumber run tag @s add MyRamen
kill @e[tag=MyRamen]
function project-c:jobaction/113/replaceitem/0
scoreboard players set @s counter 10
tag @s remove RamenSummoner