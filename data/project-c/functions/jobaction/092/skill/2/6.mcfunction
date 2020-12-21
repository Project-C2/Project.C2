summon minecraft:armor_stand ~ ~-0.4 ~ {Tags:["092razer","this"],Invisible:1b,Marker:1b,NoGravity:1b,Small:1b,Glowing:1b,ArmorItems:[{},{},{},{id:"minecraft:dirt",Count:1b}]}
execute if entity @s[team=Red] run team join RedDummy @e[tag=this,limit=1]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=this,limit=1]
scoreboard players operation @e[tag=this] counter_2 = @s counter_2

## 角度乱数によるベクトル測定
loot spawn 0 0 0 loot project-c:wnkm/rand.-180_179
execute store result entity @e[tag=this,limit=1] Rotation[0] float 1 run data get entity @e[type=item,nbt={Item:{tag:{wnkm.randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"wnkm.rand"}].Amount
kill @e[type=item,nbt={Item:{tag:{wnkm.randomItem:1b}}}]
tag @e[tag=this] remove this
particle minecraft:flash ~ ~0.5 ~ 0.1 0.1 0.1 1 4 normal @a
particle minecraft:flash ~ ~0.5 ~ 0 0 0 1 1 force @a
#particle minecraft:explosion ~ ~0.5 ~ 0 0 0 1 1 force @a
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 2
data merge block 1 2 93 {auto:1b}
kill @s
