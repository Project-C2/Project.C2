tag @s add -118-this

execute as @a[scores={jobNumber=118,counter=1..}] if score @s counter = @a[tag=-118-this,limit=1] playerNumber run function project-c:hiddenjob/-118/skill/0/reset-me
tag @s remove -118-selecting


tag @s remove -118-this