scoreboard players operation @s CT1 = @s counter_5
scoreboard players operation @s CT1 /= @s sneak
scoreboard players operation @s CT2 = @s counter_5
scoreboard players operation @s CT2 %= @s sneak
execute if score @s CT1 matches 0.. if score @s CT2 matches ..9 run title @a[tag=095riding] actionbar [{"text":"≪残り時間:","underlined":true,"color":"#dddddd","bold":true},{"score":{"name":"@s","objective":"CT1"}},{"text":".0"},{"score":{"name":"@s","objective":"CT2"}},{"text":"≫"}]
execute if score @s CT1 matches 0.. if score @s CT2 matches 10.. run title @a[tag=095riding] actionbar [{"text":"≪残り時間:","underlined":true,"color":"#dddddd","bold":true},{"score":{"name":"@s","objective":"CT1"}},{"text":"."},{"score":{"name":"@s","objective":"CT2"}},{"text":"≫"}]

scoreboard players add @s counter_1 1
scoreboard players remove @s counter_4 3
execute positioned ~ ~-0.365 ~ run data modify entity @e[tag=095setMotion,limit=1,distance=..0.2,sort=nearest] Rotation set from entity @e[limit=1,tag=095riding] Rotation
execute positioned ~ ~0.61 ~ run data modify entity @e[tag=095s3,limit=1,distance=..0.2,sort=nearest] Rotation set from entity @e[limit=1,tag=095riding] Rotation
execute positioned ~ ~0.8 ~ as @e[tag=095-3wing,limit=1,distance=..2,sort=nearest] positioned as @s run tp @s ~ ~ ~ ~ ~
