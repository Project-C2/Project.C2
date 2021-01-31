#052-EX-1 → 欠番
#052-EX-2 → 奥義発動者
#052-EX-3 → 200%奥義発動者
#052-EX-4 → 1発目奥義本体
#052-EX-5 → 2発目奥義本体
#052-EX-6 → 奥義本体共通
#052-EX-7 → 第一補正あり奥義発動者
#052-EX-8 → 第一補正あり奥義本体
#052-EX-9 → 第四補正済み奥義本体
#052-EX-10 → 奥義ダメージ対象
#052-EX-11 → ダメージ付与済み
#052-EX-R → レッドチーム奥義発動者
#052-EX-B → ブルーチーム奥義発動者
#052-EX-RR → レッドチーム奥義本体
#052-EX-BB → ブルーチーム奥義本体



execute as @s at @s run kill @e[type=minecraft:ender_pearl,distance=..2]
playsound minecraft:block.portal.trigger master @a ~ ~ ~ 3 2
execute if entity @s[scores={counter=100..}] run tag @s add 052-EX-2
execute if entity @s[scores={counter=100..,counter_1=1..}] run tag @s add 052-EX-7
execute if entity @s[scores={counter=100..},team=Red] run tag @s add 052-EX-R
execute if entity @s[scores={counter=100..},team=Blue] run tag @s add 052-EX-B
execute if entity @s[scores={counter=200}] run tag @s add 052-EX-3
execute if entity @s[scores={counter=200}] run scoreboard players set @s counter 0
execute if entity @s[scores={counter=100..}] run scoreboard players remove @s counter 100
data merge block 21 5 -20 {auto:1b}
