
execute if entity @s[tag=again] run tag @s remove again

scoreboard players add @s stockcounter 1

tag @s add me

execute if entity @e[tag=129-silenth,tag=!me,limit=1] as @e[tag=129-silenth,tag=!me] if score @s stockcounter = @e[tag=129-silenth,tag=me,limit=1] stockcounter run tag @s add 129-dup

execute if entity @e[tag=129-silenth,tag=!me,tag=129-dup,limit=1] run tag @s add again

execute if entity @e[tag=129-silenth,tag=!me,tag=129-dup,limit=1] as @e[tag=129-silenth,tag=!me,tag=129-dup] run tag @s remove 129-dup

tag @s remove me


execute if entity @s[tag=again] run function project-c:jobaction/129/skill/1/number-set