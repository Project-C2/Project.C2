#実行者     -> jobNumber = 108
#実行地点   -> 実行者
#武器攻撃力変化
data modify block 0 0 0 Items[] set from entity @s Inventory[{Slot:0b}]
scoreboard players set @s counter_1 30
scoreboard players operation @s counter_1 += @s stockcounter
execute store result block 0 0 0 Items[0].tag.AttributeModifiers[{AttributeName:"generic.attack_damage"}].Amount float 0.1 run scoreboard players get @s counter_1
clear @s shulker_shell{display:{Name:'{"text":"グローブ","italic":"false"}'}}
loot give @s mine 0 0 0 minecraft:air{inv_copy:1b}