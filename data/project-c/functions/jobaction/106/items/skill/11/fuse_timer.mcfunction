#スキル11

scoreboard players add @s counter 1

#tellraw NeAc [{"text":"C:"},{"score":{"name":"@s","objective": "counter"}},{"text":"  HP:"},{"score":{"name":"@s","objective": "counter_3"}},{"text":"   maxHP:"},{"score":{"name":"@s","objective": "counter_4"}},{"text":"   ?1:"},{"score":{"name":"@s","objective": "counter_5"}},{"text":"   ?2:"},{"score":{"name":"@s","objective": "counter_6"}}]
execute if entity @s[team=Red] run particle dust 1 0 0 1 ~ ~1 ~ 0.3 0.3 0.3 0 2 force @a
execute if entity @s[team=Blue] run particle dust 0 0 1 1 ~ ~1 ~ 0.3 0.3 0.3 0 2 force @a

execute store result entity @s Rotation[0] float 0.00001 run scoreboard players get @s counter_1
execute store result entity @s Rotation[1] float 0.00001 run scoreboard players get @s counter_2
function project-c:jobaction/106/fall_damage_nullification

execute if score @s counter matches 200.. run function project-c:jobaction/106/items/skill/11/fuse

execute if score @s counter_3 matches ..0 run function project-c:jobaction/106/items/skill/11/replace/check




execute if entity @s[nbt=!{Health:1000f}] run function project-c:jobaction/106/items/skill/11/bomb_receive

execute if score @s counter_6 matches 1.. run scoreboard players operation @s counter_5 -= @s counter_6
execute if score @s counter_5 matches -2147483648..-1 run scoreboard players reset @s counter_5
scoreboard players operation @s counter_6 += @s counter_5

scoreboard players operation @s counter_3 -= @s counter_5

execute if score @s counter_3 > @s counter_4 run scoreboard players operation @s counter_3 = @s counter_4

execute if entity @s[scores={counter_6=1..}] if data entity @s {HurtTime:1s} run scoreboard players reset @s counter_6
execute if entity @s[scores={counter_6=1..}] if data entity @s {HurtTime:0s} run scoreboard players reset @s counter_6

