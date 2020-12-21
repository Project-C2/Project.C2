summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[terrerAEC]}
execute as @e[tag=terrerAEC] at @s store result score @s counter_3 run data get entity @s UUID[1]

execute as @e[limit=1,tag=terrerAEC] at @s run scoreboard players operation @s counter_3 %= #5 counter

execute if entity @e[limit=1,tag=terrerAEC,scores={counter_3=0}] run say テラーナイトとして貴様を滅する。
execute if entity @e[limit=1,tag=terrerAEC,scores={counter_3=1}] run say この世からあの世へ叩き込んでやる。
execute if entity @e[limit=1,tag=terrerAEC,scores={counter_3=2}] run say 力の前に塵となるのだ。
execute if entity @e[limit=1,tag=terrerAEC,scores={counter_3=3}] run say 恐怖を教えてやろう。
execute if entity @e[limit=1,tag=terrerAEC,scores={counter_3=4}] run say 粉々にしてやる。

kill @e[tag=terrerAEC]
