execute if score #MenuAutogame counter matches 1.. if score #MenuAutogame counter_1 matches 1.. run scoreboard players remove #MenuAutogame counter_1 1

execute if score #MenuAutogame counter_1 matches 1200 run tellraw @a ["",{"text":"1分後にゲームを開始します。","bold":true,"color":"white"}]
execute if score #MenuAutogame counter_1 matches 600 run tellraw @a ["",{"text":"残り30秒です。","bold":true,"color":"white"}]
execute if score #MenuAutogame counter_1 matches 200 run tellraw @a ["",{"text":"10秒後に開始されます...","bold":true,"color":"white"}]

execute if score #MenuAutogame counter_1 matches 1 run data merge block -123 47 -122 {auto:1b}