execute positioned 0.0 0.0 0.0 rotated 0 ~ run summon armor_stand ^ ^ ^1 {Tags:["this"],Marker:1b,Invisible:1b,NoGravity:1b}

execute store result score #110-recoil counter run data get entity @s Rotation[1] 10000
#execute if score @s sneak matches 1.. run scoreboard players operation #110-recoil counter_1 *= #2 counter
#execute if score @s sneak matches 1.. run scoreboard players operation #110-recoil counter_1 /= #5 counter
execute store result score #110-recoil subcounter run data get entity @e[tag=this,limit=1] Pos[2] 100
execute if score #110-recoil subcounter matches ..-1 run scoreboard players operation #110-recoil subcounter *= #-1 counter
scoreboard players operation #110-recoil subcounter *= #110-recoil counter_1
scoreboard players operation #110-recoil counter += #110-recoil subcounter
execute as @e[tag=this] positioned as @s run tp @s ~ ~ ~ ~ ~
#110-recoil counter_2を設定する事で水平面のリコイル, counterを設定する事で水平面ランダムリコイル
execute if score #110-recoil counter_2 matches 1.. run function project-c:jobaction/110/operation/recoil-xz
execute store result entity @e[tag=this,limit=1] Rotation[1] float 0.0001 run scoreboard players get #110-recoil counter
execute rotated as @e[tag=this] run tp @s ~ ~ ~ ~ ~
kill @e[tag=this]
scoreboard players reset #110-recoil