tag @s add it
execute as @e[tag=092_tower_shulker] if score @s playerNumber = @e[tag=it,limit=1] playerNumber run tag @s add 092tag
tag @s remove it

execute if score @s counter matches 65 run scoreboard players set @e[tag=092tag] counter_2 3
execute unless score @s counter matches 65 run scoreboard players set @e[tag=092tag] counter_2 5
execute as @e[tag=092tag,limit=17,sort=random] run tag @s add 092shulker_launcher
data merge block 1 2 91 {auto:1b}
tag @e[tag=092tag] remove 092tag