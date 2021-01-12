scoreboard players set @s counter_2 20

scoreboard players set @s counter_1 0
execute anchored eyes positioned ^ ^ ^ anchored feet run function project-c:jobaction/119/skill/0/loop
execute if entity @e[tag=119on,limit=1] run function project-c:jobaction/119/skill/0/1
execute unless entity @e[tag=119on,limit=1] run function project-c:jobaction/119/skill/0/fail
scoreboard players reset #119-
execute if entity @e[tag=119on,limit=1] run kill @e[tag=119on]
