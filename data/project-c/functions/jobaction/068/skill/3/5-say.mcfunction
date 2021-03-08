summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"爆撃機フォボス"}',Tags:[fovosAEC]}
execute as @e[tag=fovosAEC] at @s store result score @s counter_3 run data get entity @s UUID[1]

execute as @e[limit=1,tag=fovosAEC] at @s run scoreboard players operation @s counter_3 %= #4 counter

execute as @e[limit=1,tag=fovosAEC,scores={counter_3=0}] at @s run say フォボスの恐ろしさが分かったか！！
execute as @e[limit=1,tag=fovosAEC,scores={counter_3=1}] at @s run say こちらフォボス、再攻撃の準備に入る。
execute as @e[limit=1,tag=fovosAEC,scores={counter_3=2}] at @s run say こちらフォボス、任務は終わった。帰るぞ。
execute as @e[limit=1,tag=fovosAEC,scores={counter_3=3}] at @s run say こちらフォボス、目標地点の攻撃を完了。地上部隊の検討を祈る。
kill @e[tag=fovosAEC]
