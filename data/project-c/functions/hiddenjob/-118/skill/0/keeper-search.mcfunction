tag @s add -118-this

execute as @a[scores={jobNumber=118,counter=1..}] if score @s counter = @a[tag=-118-this,limit=1] playerNumber run tag @s add -118-keeper---
execute unless entity @a[tag=-118-keeper---,limit=1] run tag @s remove -118-selecting
execute if entity @a[tag=-118-keeper---,limit=1] as @a[tag=-118-keeper---] run tag @s remove -118-keeper---

tag @s remove -118-this