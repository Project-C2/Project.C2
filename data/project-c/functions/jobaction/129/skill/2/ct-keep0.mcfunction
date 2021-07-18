#使用中状態の時にCT増加を食らったとき用の処理

tag @s add me

execute as @e[tag=129-totem] if score @s playerNumber = @a[tag=me,limit=1] playerNumber run tag @s add using

execute if entity @e[tag=129-totem,tag=using,limit=1] unless score @s CT2 matches 1200.. run function project-c:jobaction/129/skill/2/ct-keep

execute if entity @e[tag=129-totem,tag=using,limit=1] as @e[tag=129-totem,tag=using] run tag @s remove using
tag @s remove me