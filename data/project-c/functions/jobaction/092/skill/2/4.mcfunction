tag @s add it
execute as @e[tag=092_tower_shulker] if score @s playerNumber = @e[tag=it,limit=1] playerNumber run tag @s add 092shulker_launcher
tag @s remove it


scoreboard players set @e[tag=092shulker_launcher] counter_2 10

data merge block 1 2 91 {auto:1b}
kill @s