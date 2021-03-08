summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"爆撃機フォボス"}',Tags:[fovosAEC]}
execute as @e[tag=fovosAEC] at @s store result score @s counter_3 run data get entity @s UUID[1]

execute as @e[limit=1,tag=fovosAEC] at @s run scoreboard players operation @s counter_3 %= #3 counter

execute as @e[limit=1,tag=fovosAEC,scores={counter_3=0}] at @s run say ファイヤッ！！
execute as @e[limit=1,tag=fovosAEC,scores={counter_3=1}] at @s run say アタックッ！！
execute as @e[limit=1,tag=fovosAEC,scores={counter_3=2}] at @s run say ゴー！！
kill @e[tag=fovosAEC]
