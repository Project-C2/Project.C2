tag @s add Arrow
tag @s add 124arrow
tag @s remove 124shot
execute if data entity @s {crit:1b} run tag @s add flag
execute unless entity @s[tag=flag] run function project-c:jobaction/124/skill/3/2-0
execute if entity @s[tag=flag] run function project-c:jobaction/124/skill/3/3-0
