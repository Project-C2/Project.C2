#疑似的な死亡
gamemode spectator @s
scoreboard players set @s deathCount 1
execute if entity @s[team=Red] run scoreboard players remove #GamePointRed counter 1
execute if entity @s[team=Blue] run scoreboard players remove #GamePointBlue counter 1
tag @s remove Battle
tellraw @a ["",{"selector":"@s","color":"dark_purple"},{"text":"\u306f\u6d88\u6ec5\u3057\u305f\u3002\u3002\u3002","color":"dark_purple"}]

execute if score #MenuRuleselect counter matches 0 run kill @s
execute if score #MenuRuleselect counter matches 0 run gamemode adventure @s

#演出
particle dragon_breath ~ ~1 ~ 0.5 1 0.5 0.01 256
particle dragon_breath ~ ~1 ~ 0.5 1 0.5 0.1 64
playsound entity.boat.paddle_water master @a ~ ~ ~ 1 0.5
playsound minecraft:entity.wither.death master @a ~ ~ ~ 0.3 0.9