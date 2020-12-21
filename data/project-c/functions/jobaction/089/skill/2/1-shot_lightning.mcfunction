scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @a[tag=089lightning_p] if score @s playerNumber = #dummy playerNumber run tag @s add usedBy
execute at @a[tag=089lightning_p] run summon armor_stand ~ ~2 ~ {Tags:["089lightning_elem","this"],Marker:1b,Invisible:1b,NoGravity:1b}
execute as @e[tag=this] at @s rotated 0 -90 run tp @s ~ ~ ~ ~ ~
data merge block -35 2 91 {auto:1b}
tag @e[tag=this] remove this
tag @a[tag=usedBy] remove 089lightning_p
tag @a[tag=usedBy] remove usedBy