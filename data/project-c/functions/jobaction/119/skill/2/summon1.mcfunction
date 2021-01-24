summon item ~ ~ ~ {Fire:2s,Tags:["this","119flower","isItem"],Item:{id:"minecraft:pink_dye",Count:1b,tag:{Enchantments:[{}]}},Owner:[I;0,0,0,0],Age:5600s,Health:6s}
scoreboard players operation @e[tag=this,limit=1,sort=nearest] playerNumber = @s playerNumber

loot spawn 0.0 0.0 0.0 loot project-c:wnkm/rand.2.-50_49
tag @e[type=item,nbt={Item:{tag:{wnkm.randomItem:1b}}},limit=1,x=0.0,y=0.0,z=0.0,sort=nearest] add 119_2rand
data modify entity @e[type=item,tag=this,limit=1,sort=nearest] Item.tag.AttributeModifiers set from entity @e[type=item,tag=119_2rand,limit=1] Item.tag.AttributeModifiers
execute store result entity @e[tag=119_2vector,limit=1] Pos[0] double 0.00036 run data get entity @e[type=item,tag=119_2rand,limit=1] Item.tag.AttributeModifiers[{Name:"wnkm.rand.1"}].Amount 20
execute store result entity @e[tag=119_2vector,limit=1] Pos[1] double 0.008 run scoreboard players get @s counter_4
execute store result entity @e[tag=119_2vector,limit=1] Pos[2] double 0.00036 run data get entity @e[type=item,tag=119_2rand,limit=1] Item.tag.AttributeModifiers[{Name:"wnkm.rand.2"}].Amount 20
data modify entity @e[type=item,tag=this,limit=1,sort=nearest] Motion set from entity @e[tag=119_2vector,limit=1] Pos

kill @e[type=item,tag=119_2rand]
tag @e[type=item,tag=this,limit=1,sort=nearest] remove this

scoreboard players remove @s counter_4 3
execute if score @s counter_4 matches 20.. run function project-c:jobaction/119/skill/2/summon1
