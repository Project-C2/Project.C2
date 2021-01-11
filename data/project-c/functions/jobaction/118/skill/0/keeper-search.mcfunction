tag @s add 118_0_selected---

execute as @a[scores={jobNumber=118,counter=1..}] if score @s counter = @a[tag=118_0_selected---,limit=1] playerNumber run tag @s add 118-keeper-B
execute unless entity @s[tag=118-keeper-B] run tag @s remove 118_0_selecting
execute if entity @s[tag=118-keeper-B] run tag @s remove 118-keeper-B

tag @s remove 118_0_selected---