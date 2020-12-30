summon item ~ ~ ~ {Fire:2s,Invulnerable:1b,Tags:["this","104mineF","104mine","isItem"],Item:{id:"minecraft:magma_block",Count:1b,tag:{Enchantments:[{}]}},Owner:[I;0,0,0,0],Age:5700s,Passengers:[{id:"armor_stand",Marker:1b,Invisible:1b,NoGravity:1b,Small:1b,Silent:1b,Tags:["104mineStand"]}]}
loot spawn ~ ~ ~ loot project-c:wnkm/rand.2.-50_49
execute store result entity @e[tag=104_2vector,limit=1] Pos[0] double 0.00025 run data get entity @e[type=item,nbt={Item:{tag:{wnkm.randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"wnkm.rand.1"}].Amount 20
data modify entity @e[type=item,tag=this,limit=1,sort=nearest] Item.tag.AttributeModifiers set from entity @e[type=item,nbt={Item:{tag:{wnkm.randomItem:1b}}},limit=1] Item.tag.AttributeModifiers
execute store result entity @e[tag=104_2vector,limit=1] Pos[2] double 0.00025 run data get entity @e[type=item,nbt={Item:{tag:{wnkm.randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"wnkm.rand.2"}].Amount 20
kill @e[type=item,nbt={Item:{tag:{wnkm.randomItem:1b}}}]
data modify entity @e[type=item,tag=this,limit=1,sort=nearest] Motion set from entity @e[tag=104_2vector,limit=1] Pos
tag @e[type=item,tag=this,limit=1,sort=nearest] remove this

scoreboard players remove @s counter_1 1
execute if score @s counter_1 matches 1.. run function project-c:jobaction/104/skill/2/spread_mine