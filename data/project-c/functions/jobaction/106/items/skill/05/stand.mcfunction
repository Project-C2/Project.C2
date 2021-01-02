#スキル5

execute if entity @s[team=Red] run particle dust 1 0 0 1 ~ ~1 ~ 0.3 0.3 0.3 0 2 force @a
execute if entity @s[team=Blue] run particle dust 0 0 1 1 ~ ~1 ~ 0.3 0.3 0.3 0 2 force @a

#execute if block ~ ~-0.5 ~ #ex3:like_air run tp @s ~ ~-0.5 ~
execute store result entity @s Rotation[0] float 0.00001 run scoreboard players get @s counter_1
execute store result entity @s Rotation[1] float 0.00001 run scoreboard players get @s counter_2
execute unless data entity @s ActiveEffects[{Id:24b}] if data entity @s Glowing run data modify entity @s Glowing set value 0b
execute if data entity @s ActiveEffects[{Id:24b}] unless data entity @s Glowing run data modify entity @s Glowing set value 1b
data modify entity @s FallDistance set value 0

execute if entity @s[nbt={HurtTime:10s}] run tag @s add 106_reconnaissance_p
execute if entity @s[tag=106_reconnaissance_p] run scoreboard players operation #106_playerNumber counter = @s playerNumber
execute if entity @s[tag=106_reconnaissance_p] as @a[scores={jobNumber=106,counter=1..}] if score @s playerNumber = #106_playerNumber counter run tag @s add 106_reconnaissance_return
execute if entity @s[tag=106_reconnaissance_p] run scoreboard players reset #106_playerNumber
execute if entity @a[tag=106_reconnaissance_return,limit=1] as @a[tag=106_reconnaissance_return] unless score @s counter matches 0 run scoreboard players set @s counter 1

execute if entity @a[tag=106_reconnaissance_return,limit=1] as @a[tag=106_reconnaissance_return] run tag @s remove 106_reconnaissance_return
