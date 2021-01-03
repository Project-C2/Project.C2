#終了処理
execute unless entity @e[scores={jobNumber=15,counter=1..},limit=1] run data merge block 63 2 -122 {auto:0b}

#スコア減算
scoreboard players remove @s counter 1

# 演出
execute if entity @s[scores={counter=41..60}] run particle soul ~ ~0.7 ~ 0 0 0 0.05 1
execute if entity @s[scores={counter=21..40}] run particle soul ~ ~0.7 ~ 0.1 0.05 0.1 0.08 1
execute if entity @s[scores={counter=1..20}] run particle soul ~ ~0.7 ~ 0.2 0.1 0.2 0.1 2

execute if entity @s[scores={counter=..0}] run function project-c:jobaction/015/skill/3/1-e