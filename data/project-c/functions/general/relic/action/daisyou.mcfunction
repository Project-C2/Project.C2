#relicCount  -> 毎tickのHealth取得+スコア保持
#relicCount2 -> 毎tickのAbsorptionAmount取得
#


execute if entity @s[nbt={HurtTime:9s}] run function project-c:general/relic/action/daisyou_damage
execute unless entity @s[nbt={HurtTime:10s}] store result score @s relicCount run data get entity @s Health 100
execute unless entity @s[nbt={HurtTime:10s}] store result score @s relicCount2 run data get entity @s AbsorptionAmount 100
execute unless entity @s[nbt={HurtTime:10s}] run scoreboard players operation @s relicCount += @s relicCount2
