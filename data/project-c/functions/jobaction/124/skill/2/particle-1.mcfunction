loot spawn 0.0 0.0 0.0 loot project-c:wnkm/rand.2.-50_49
tag @e[type=item,nbt={Item:{tag:{wnkm.randomItem:1b}}},limit=1,x=0.0,y=0.0,z=0.0,sort=nearest] add 124_2rand
data modify entity @e[type=item,tag=this,limit=1,sort=nearest] Item.tag.AttributeModifiers set from entity @e[type=item,tag=124_2rand,limit=1] Item.tag.AttributeModifiers
execute store result entity @s Rotation[0] float 0.1 run data get entity @e[type=item,tag=124_2rand,limit=1] Item.tag.AttributeModifiers[{Name:"wnkm.rand.1"}].Amount 36
execute store result entity @s Rotation[1] float 0.1 run data get entity @e[type=item,tag=124_2rand,limit=1] Item.tag.AttributeModifiers[{Name:"wnkm.rand.2"}].Amount 18
execute store result score @s counter_1 run data get entity @e[type=item,tag=124_2rand,limit=1] UUID[1] 1
scoreboard players operation @s counter_1 %= #100 counter
scoreboard players operation @s counter_1 /= #2 counter
scoreboard players add @s counter_1 14
kill @e[tag=124_2rand]
