#GUIクリック検知
execute unless entity @s[tag=110drop] run function project-c:jobaction/110/gui/check
scoreboard players reset #110-

#アイテム表示
execute if entity @s[tag=110pageChange] run function project-c:jobaction/110/gui/set
