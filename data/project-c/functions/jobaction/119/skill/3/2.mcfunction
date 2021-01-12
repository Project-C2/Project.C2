tag @s add user
scoreboard players set @s counter_1 0
execute anchored eyes positioned ^ ^ ^ anchored feet run function project-c:jobaction/119/skill/3/loop
execute unless entity @e[tag=hit,limit=1] run function project-c:jobaction/119/skill/3/self_heal
execute if entity @e[tag=hit,limit=1] as @e[tag=hit,limit=1] at @s run function project-c:jobaction/119/skill/3/heal
tag @s remove user

scoreboard players reset @s counter_4
