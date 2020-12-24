#tp
execute as @e[tag=088-hurt] if score @s playerNumber = @a[sort=nearest,limit=1,scores={jobNumber=88}] playerNumber run tag @s add 088-respawn-stand
execute at @e[tag=088-respawn-stand,limit=1] run teleport @s ~ ~ ~ ~ ~

#蘇生
execute if entity @s[team=Red] run scoreboard players add #GamePointRed counter 1
execute if entity @s[team=Blue] run scoreboard players add #GamePointBlue counter 1

execute if score #MenuRuleselect counter matches 0 run execute if entity @s[team=Red] run scoreboard players remove #GamePointBlue counter 1
execute if score #MenuRuleselect counter matches 0 run execute if entity @s[team=Blue] run scoreboard players remove #GamePointRed counter 1

execute if score #MenuRuleselect counter matches 0 run scoreboard players operation ラピス extermination = #GamePointBlue counter
execute if score #MenuRuleselect counter matches 0 run scoreboard players operation レッド extermination = #GamePointRed counter

tag @s add Battle
scoreboard players reset @s deathCount
scoreboard players reset @s deathCountExt
gamemode adventure @s
scoreboard players set @s relicCount 0
scoreboard players set @s relicCount2 0
scoreboard players set @s drop 1

#タグ
tag @s add 088-S3-used
tag @s remove 088-S3-ready

#CTリセ
scoreboard players set @s CT1 1200
scoreboard players set @s CT2 1200

#デバフ撒く
execute if entity @s[team=Red] run effect give @e[distance=..5,team=Blue] blindness 1 0 false
execute if entity @s[team=Red] run scoreboard players set @e[distance=..5,team=Blue] stanTime 20
execute if entity @s[team=Blue] run effect give @e[distance=..5,team=Red] blindness 1 0 false
execute if entity @s[team=Blue] run scoreboard players set @e[distance=..5,team=Red] stanTime 20

#コマブロ起動
data merge block -45 2 89 {auto:1b}

#counterセット
scoreboard players set @s counter_4 160
scoreboard players operation @s counter_5 = @s playerKills

#演出
playsound item.totem.use master @a ~ ~ ~ 1 1
playsound entity.boat.paddle_water master @a ~ ~ ~ 1 0.5
particle totem_of_undying ~ ~1 ~ 1 0 1 0.5 256
particle campfire_cosy_smoke ~ ~ ~ 1 0 1 1 128