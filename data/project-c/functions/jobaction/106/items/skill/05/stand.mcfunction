#スキル5

scoreboard players operation #106- teamNumber = @s teamNumber
scoreboard players operation #106- playerNumber = @s playerNumber
tag @s add this2
execute if entity @s[team=Red] run particle dust 1 0 0 1 ~ ~1 ~ 0.3 0.3 0.3 0 2 force @a
execute if entity @s[team=Blue] run particle dust 0 0 1 1 ~ ~1 ~ 0.3 0.3 0.3 0 2 force @a

#execute if block ~ ~-0.5 ~ #ex3:like_air run tp @s ~ ~-0.5 ~
execute store result entity @s Rotation[0] float 0.00001 run scoreboard players get @s counter_1
execute store result entity @s Rotation[1] float 0.00001 run scoreboard players get @s counter_2
execute unless data entity @s ActiveEffects[{Id:24b}] if data entity @s Glowing run data modify entity @s Glowing set value 0b
execute if data entity @s ActiveEffects[{Id:24b}] unless data entity @s Glowing run data modify entity @s Glowing set value 1b
data modify entity @s FallDistance set value 0


scoreboard players add @s counter_3 1
execute if score @s counter_3 matches 401 as @a[tag=Battle] if score @s playerNumber = #106- playerNumber run function project-c:jobaction/106/items/skill/05/return

execute if entity @s[nbt={HurtTime:10s}] run tag @s add damaged

execute if entity @s[tag=damaged] as @a[tag=Battle] if score @s playerNumber = #106- playerNumber run tag @s add 106-skill05-return
execute if entity @a[tag=106-skill05-return,limit=1] as @a[tag=106-skill05-return] run function project-c:jobaction/106/items/skill/05/return
execute if entity @a[tag=106-skill05-return,limit=1] as @a[tag=106-skill05-return] run tag @e[tag=106-skill05-return] remove 106-skill05-return

execute as @a[tag=Battle,x_rotation=90] if score @s playerNumber = #106- playerNumber run function project-c:jobaction/106/items/skill/05/return

tag @s remove this2
scoreboard players reset #106-

