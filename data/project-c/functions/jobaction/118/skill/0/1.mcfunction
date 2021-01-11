tag @s add 118_0_1_anchor
execute as @e[tag=Battle,tag=!118_0_1_anchor] if score @s playerNumber = @a[tag=118_0_1_anchor,limit=1] counter run tag @s add 118_0_1_selected
execute if entity @e[tag=118_0_1_selected,limit=1] run title @s actionbar [{"text":"選択中: ","bold":true},{"selector": "@e[tag=118_0_1_selected]"}]
execute if entity @e[tag=118_0_1_selected,limit=1] as @e[tag=118_0_1_selected] run tag @s remove 118_0_1_selected
tag @s remove 118_0_1_anchor