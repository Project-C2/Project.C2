scoreboard players add @s counter 1

tag @s add 051tag
execute as @a[tag=051_koore_p,distance=..5] if score @s playerNumber = @e[tag=051tag,limit=1] playerNumber run tag @s add 051_user
tag @s remove 051tag
execute positioned ^ ^-1.0 ^-0.5 run tp @a[tag=051_user] ~ ~ ~
execute if score @s counter matches 9.. run function project-c:jobaction/051/skill/1/2
tag @e[tag=051_user] remove 051_user