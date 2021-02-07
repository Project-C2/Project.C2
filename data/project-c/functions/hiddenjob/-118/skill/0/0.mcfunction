
tag @s add -118-anchor
scoreboard players operation #-118 teamNumber = @s teamNumber
execute as @a[tag=Battle,tag=!-118-anchor] if score @s teamNumber = #-118 teamNumber run tag @s add -118-anchor2

execute anchored eyes positioned ^ ^ ^0.5 run function project-c:hiddenjob/-118/skill/0/target

execute if entity @a[tag=Battle,tag=-118-anchor2,limit=1] as @a[tag=Battle,tag=-118-anchor2] run tag @s remove -118-anchor2
tag @s remove -118-anchor
