tag @s add 118_0_selected---

execute as @a[scores={jobNumber=118,counter=1..}] if score @s counter = @a[tag=118_0_selected---,limit=1] playerNumber run function project-c:jobaction/118/skill/0/reset-me
tag @s remove 118_0_selecting


tag @s remove 118_0_selected---