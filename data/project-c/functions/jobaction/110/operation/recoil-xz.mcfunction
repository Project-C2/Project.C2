#110- counter_2 -> リコイルの程度(想定:1～100)
#110- counter_3 -> ランダムリコイルの程度(想定:1～20)
execute if score #110- counter_3 matches 1.. run loot spawn 0 -10 0 loot project-c:wnkm/rand.-180_179
execute if score #110- counter_3 matches 1.. store result score #110- counter_4 run data get entity @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"wnkm.rand"}]}}},limit=1] Item.tag.AttributeModifiers[{Name:"wnkm.rand"}].Amount 1.38
execute if score #110- counter_3 matches 1.. run kill @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"wnkm.rand"}]}}}]
execute if score #110- counter_3 matches 1.. run scoreboard players operation #110- counter_4 *= #110- counter_3
execute unless score #110- counter_3 matches 1.. run scoreboard players set #110- counter_4 1000
scoreboard players operation #110- counter_2 *= #110- counter_4
#execute if score @s sneak matches 1.. run scoreboard players operation #110- subcounter *= #2 counter
#execute if score @s sneak matches 1.. run scoreboard players operation #110- subcounter /= #5 counter
execute store result score #110- counter_3 run data get entity @s Rotation[0] 10000
execute store result entity @e[tag=this,limit=1] Rotation[0] float 0.0001 run scoreboard players operation #110- counter_3 -= #110- counter_2
