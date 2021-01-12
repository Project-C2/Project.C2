tag @s add 118_0_selected---

execute as @a[scores={jobNumber=118,counter=1..}] if score @s counter = @a[tag=118_0_selected---,limit=1] playerNumber run tag @s add 118-keeper-B
execute unless entity @a[tag=118-keeper-B,limit=1] run tag @s remove 118_0_selecting
execute if entity @a[tag=118-keeper-B,limit=1] as @a[tag=118-keeper-B] run tag @s remove 118-keeper-B

tag @s remove 118_0_selected---