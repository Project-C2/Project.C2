execute if score #MenuAutogame counter matches 1.. if score #MenuAutogame counter_1 matches 1.. run scoreboard players remove #MenuAutogame counter_1 1

execute if score #MenuAutogame counter_1 matches 1200 run tellraw @a ["",{"text":"1分後にゲームを開始します。","bold":true,"color":"white"}]
execute if score #MenuAutogame counter_1 matches 600 run tellraw @a ["",{"text":"残り30秒です。","bold":true,"color":"white"}]
execute if score #MenuAutogame counter_1 matches 200 run tellraw @a ["",{"text":"10秒後に開始されます...","bold":true,"color":"white"}]

execute if score #MenuAutogame counter_1 matches 1 run execute if entity @a[team=Red,limit=1] if entity @a[team=Blue,limit=1] run data merge block 1002 59 37 {auto:1b}
execute if score #MenuAutogame counter_1 matches 1 run execute if entity @a[team=Red,limit=1] if entity @a[team=Blue,limit=1] run data merge block -123 47 -122 {auto:1b}

execute if score #MenuAutogame counter_1 matches 1 run execute unless entity @a[team=Red] unless entity @a[team=Blue] run tellraw @a ["",{"text":"開始に失敗しました。","bold":true,"color":"red"}]
execute if score #MenuAutogame counter_1 matches 1 run execute unless entity @a[team=Red] unless entity @a[team=Blue] run scoreboard players set #MenuAutogame counter 0
execute if score #MenuAutogame counter_1 matches 1 run execute unless entity @a[team=Red] unless entity @a[team=Blue] run scoreboard players set #MenuAutogame counter_1 0

