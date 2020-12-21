#リセット+
execute if entity @s run scoreboard players set @s Mana 0
#2属性
#ヘリオドール
execute if entity @s[scores={counter_1=2,counter_2=3,counter_3=0}] run scoreboard players set @s Mana 1
execute if entity @s[scores={counter_1=3,counter_2=2,counter_3=0}] run scoreboard players set @s Mana 1
#アメジスト
execute if entity @s[scores={counter_1=1,counter_2=3,counter_3=0}] run scoreboard players set @s Mana 2
execute if entity @s[scores={counter_1=3,counter_2=1,counter_3=0}] run scoreboard players set @s Mana 2
#シトリン
execute if entity @s[scores={counter_1=1,counter_2=2,counter_3=0}] run scoreboard players set @s Mana 3
execute if entity @s[scores={counter_1=2,counter_2=1,counter_3=0}] run scoreboard players set @s Mana 3

#3属性
#セレスタイト
execute if entity @s[scores={counter_1=3,counter_2=3,counter_3=2}] run scoreboard players set @s Mana 4
execute if entity @s[scores={counter_1=3,counter_2=2,counter_3=3}] run scoreboard players set @s Mana 4
execute if entity @s[scores={counter_1=2,counter_2=3,counter_3=3}] run scoreboard players set @s Mana 4
#ターフェアイト
execute if entity @s[scores={counter_1=3,counter_2=3,counter_3=1}] run scoreboard players set @s Mana 5
execute if entity @s[scores={counter_1=3,counter_2=1,counter_3=3}] run scoreboard players set @s Mana 5
execute if entity @s[scores={counter_1=1,counter_2=3,counter_3=3}] run scoreboard players set @s Mana 5
#アンドラダイト
execute if entity @s[scores={counter_1=2,counter_2=2,counter_3=3}] run scoreboard players set @s Mana 6
execute if entity @s[scores={counter_1=2,counter_2=3,counter_3=2}] run scoreboard players set @s Mana 6
execute if entity @s[scores={counter_1=3,counter_2=2,counter_3=2}] run scoreboard players set @s Mana 6
#ウヴァロヴァイト
execute if entity @s[scores={counter_1=2,counter_2=2,counter_3=1}] run scoreboard players set @s Mana 7
execute if entity @s[scores={counter_1=2,counter_2=1,counter_3=2}] run scoreboard players set @s Mana 7
execute if entity @s[scores={counter_1=1,counter_2=2,counter_3=2}] run scoreboard players set @s Mana 7
#クンツァイト
execute if entity @s[scores={counter_1=1,counter_2=1,counter_3=3}] run scoreboard players set @s Mana 8
execute if entity @s[scores={counter_1=1,counter_2=3,counter_3=1}] run scoreboard players set @s Mana 8
execute if entity @s[scores={counter_1=3,counter_2=1,counter_3=1}] run scoreboard players set @s Mana 8
#モルガナイト
execute if entity @s[scores={counter_1=1,counter_2=1,counter_3=2}] run scoreboard players set @s Mana 9
execute if entity @s[scores={counter_1=1,counter_2=2,counter_3=1}] run scoreboard players set @s Mana 9
execute if entity @s[scores={counter_1=2,counter_2=1,counter_3=1}] run scoreboard players set @s Mana 9

#ネフライト
execute if entity @s[scores={counter_1=1,counter_2=2,counter_3=3}] run scoreboard players set @s Mana 10
execute if entity @s[scores={counter_1=1,counter_2=3,counter_3=2}] run scoreboard players set @s Mana 10
execute if entity @s[scores={counter_1=2,counter_2=1,counter_3=3}] run scoreboard players set @s Mana 10
execute if entity @s[scores={counter_1=2,counter_2=3,counter_3=1}] run scoreboard players set @s Mana 10
execute if entity @s[scores={counter_1=3,counter_2=1,counter_3=2}] run scoreboard players set @s Mana 10
execute if entity @s[scores={counter_1=3,counter_2=2,counter_3=1}] run scoreboard players set @s Mana 10


function project-c:jobaction/059/replaceitem/4
function project-c:jobaction/059/replaceitem/actbar