tag @s add -118-this2
execute as @a[tag=Battle,tag=!-118-this2] if score @s playerNumber = @a[tag=-118-this2,limit=1] counter run tag @s add -118-selected
title @s actionbar ["",{"text":"選択中: ","bold":true},{"selector": "@a[tag=-118-selected]"}]
execute unless entity @s[tag=Battle] run function project-c:hiddenjob/-118/skill/0/reset-me2
execute if entity @a[tag=-118-selected,limit=1] as @a[tag=-118-selected] run tag @s remove -118-selected
tag @s remove -118-this2