###攻撃力変化
data modify block 0 0 0 Items[0] set from entity @s Inventory[{Slot:0b}]
scoreboard players set @s 108-Melee-Damage 30
scoreboard players operation @s 108-Melee-Damage += @s 108-CHEL-Count
execute store result block 0 0 0 Items[0].tag.AttributeModifiers[{AttributeName:"generic.attack_damage"}].Amount float 0.1 run scoreboard players get @s 108-Melee-Damage
loot replace entity @s hotbar.0 mine 0 0 0 minecraft:air{inv_copy:1b}