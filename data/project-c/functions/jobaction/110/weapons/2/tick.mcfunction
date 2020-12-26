scoreboard players add @s counter 1
scoreboard players operation #110- playerNumber = @s playerNumber

execute as @a[tag=110_parry] if score @s playerNumber = #110- playerNumber run tag @s add 110
execute as @a[tag=110] if data entity @s {HurtTime:9s} at @s run function project-c:jobaction/110/weapons/2/parry
execute if entity @a[tag=parrt_antikb,limit=1] as @a[tag=parrt_antikb] run tp @s @s
execute if entity @a[tag=parrt_antikb,limit=1] as @a[tag=parrt_antikb] run tag @s remove parrt_antikb
execute if score @s counter matches 7.. run effect clear @a[tag=110,tag=110_parry] resistance
execute if score @s counter matches 7.. run tag @a[tag=110,tag=110_parry] remove 110_parry
tag @a[tag=110] remove 110
scoreboard players reset #110-
execute if score @s counter matches 10.. run kill @s