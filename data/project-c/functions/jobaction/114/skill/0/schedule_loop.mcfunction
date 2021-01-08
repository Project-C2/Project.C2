# 実行者　-> Server
# 実行位置 -> 0 0 0
execute as @e[tag=Ramen] at @s run function project-c:jobaction/114/skill/0/schedule_loop/0
execute if entity @e[tag=Ramen,limit=1] run schedule function project-c:jobaction/114/skill/0/schedule_loop 1t replace

#ダミープレイヤーリセット
scoreboard players reset #StoredRamenRotation counter
scoreboard players reset #RamenRotation counter
scoreboard players reset #BladerRotation counter
scoreboard players reset #CurrentRamenRotation counter
scoreboard players reset #RamenTurnRotation counter
scoreboard players reset #SushiAttackDamage counter
scoreboard players reset #BladerAttackDamage counter