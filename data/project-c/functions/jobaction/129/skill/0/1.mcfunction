tag @s add 118_0_1_anchor
execute as @a[tag=Battle,tag=!118_0_1_anchor] if score @s playerNumber = @a[tag=118_0_1_anchor,limit=1] counter run tag @s add 118_0_1_selected
title @s actionbar ["",{"text":"選択中: ","bold":true},{"selector": "@a[tag=118_0_1_selected]"}]
execute unless entity @s[tag=Battle] run function project-c:jobaction/118/skill/0/reset-me2
execute if entity @a[tag=118_0_1_selected,limit=1] as @a[tag=118_0_1_selected] run tag @s remove 118_0_1_selected
tag @s remove 118_0_1_anchor