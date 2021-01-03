loot spawn 0 0 0 loot project-c:wnkm/rand.-180_179
execute store result score @s counter_7 run data get entity @e[type=item,nbt={Item:{tag:{wnkm.randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"wnkm.rand"}].Amount
kill @e[type=item,nbt={Item:{tag:{wnkm.randomItem:1b}}}]
scoreboard players operation @s counter_7 %= #6 counter
scoreboard players add @s counter_7 1

execute if score @s counter_6 matches 1 run function project-c:jobaction/115/skill/2/0-second
execute if score @s counter_6 matches 2 run function project-c:jobaction/115/skill/2/0-third

scoreboard players set @s counter_8 1

playsound minecraft:item.armor.equip_leather master @a ~ ~ ~ 1 1
playsound minecraft:item.armor.equip_generic master @a ~ ~ ~ 1 1
playsound minecraft:block.chest.locked master @a ~ ~ ~ 1 2

function project-c:jobaction/115/replaceitem/0

