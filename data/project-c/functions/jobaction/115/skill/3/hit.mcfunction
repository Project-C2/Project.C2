summon arrow ~ ~0.5 ~ {Tags:["this"],CustomName:'{"text":"真面目な献身","color":"light_purple","italic":false}',life:1200s,damage:4.5d,PierceLevel:127b}
execute positioned 0.0 0.0 0.0 rotated ~ 20 run summon area_effect_cloud ^ ^ ^2 {Tags:["115vector"],Duration:1}
data modify entity @e[tag=this,limit=1] Motion set from entity @e[tag=115vector,limit=1] Pos
kill @e[tag=115vector]
execute as @e[tag=this,limit=1] store result score @s counter_1 run data get entity @s Pos[0] 100
execute as @e[tag=this,limit=1] store result score @s counter_2 run data get entity @s Pos[1] 100
execute as @e[tag=this,limit=1] store result score @s counter_3 run data get entity @s Pos[2] 100
execute as @e[tag=this,limit=1] store result score @s counter_6 run data get entity @s Motion[0] 100
execute as @e[tag=this,limit=1] store result score @s counter_7 run data get entity @s Motion[1] 100
execute as @e[tag=this,limit=1] store result score @s counter_8 run data get entity @s Motion[2] 100
execute as @e[tag=this,limit=1] store result entity @s Pos[0] double 0.01 run scoreboard players operation @s counter_1 -= @s counter_6
execute as @e[tag=this,limit=1] store result entity @s Pos[1] double 0.01 run scoreboard players operation @s counter_2 -= @s counter_7
execute as @e[tag=this,limit=1] store result entity @s Pos[2] double 0.01 run scoreboard players operation @s counter_3 -= @s counter_8
tag @e[tag=this] remove this
advancement grant @s[type=player] only project-c:wanco_job/115/obtain_diamond_hoe
stopsound @a[distance=..25] player minecraft:ui.toast.challenge_complete
playsound minecraft:ui.toast.challenge_complete player @a[distance=0.01..] ~ ~ ~ 1.5 1

