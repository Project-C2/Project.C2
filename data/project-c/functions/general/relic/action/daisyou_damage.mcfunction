#relicCount  -> 毎tickのHealth取得+スコア保持
#relicCount2 -> 毎tickのAbsorptionAmount取得
#使用#entity -> #relic_daisyou


scoreboard players operation #relic_daisyou relicCount = @s relicCount
execute store result score @s relicCount run data get entity @s Health 100
execute store result score @s relicCount2 run data get entity @s AbsorptionAmount 100
scoreboard players operation @s relicCount2 += @s relicCount
scoreboard players operation #relic_daisyou relicCount -= @s relicCount2
#execute unless score #relic_daisyou relicCount matches 301.. run effect give @s minecraft:instant_damage 1 0
execute if score #relic_daisyou relicCount matches 1.. run scoreboard players operation @s relicCount -= #relic_daisyou relicCount
execute if score #relic_daisyou relicCount matches 1.. if score @s relicCount matches 1.. run scoreboard players operation @s ScoreToHealth = @s relicCount
execute if score #relic_daisyou relicCount matches 1.. unless score @s relicCount matches 1.. run effect give @s minecraft:instant_damage 1 9
particle minecraft:dust 1 0 0 3 ~ ~1 ~ 0.5 0.5 0.5 0 20 force @a[distance=1..]
playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 2 0.5
