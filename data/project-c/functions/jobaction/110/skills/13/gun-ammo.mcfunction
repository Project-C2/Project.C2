data remove block 0 0 0 Items[]
execute store result score #110dummy counter_1 run data get entity @s SelectedItem.tag.110Ammo
data modify block 0 0 0 Items[] merge from entity @s SelectedItem
execute store result block 0 0 0 Items[0].tag.110Ammo int 1 run scoreboard players remove #110dummy counter_1 1
execute store result score #110dummy counter run data get entity @s SelectedItem.tag.110AmmoMax
scoreboard players set #110dummy subcounter 2031
scoreboard players operation #110dummy subcounter /= #110dummy counter
scoreboard players operation #110dummy counter -= #110dummy counter_1
scoreboard players operation #110dummy counter *= #110dummy subcounter
scoreboard players add #110dummy counter 1
execute store result block 0 0 0 Items[0].tag.Damage int 1 run scoreboard players get #110dummy counter
loot replace entity @s weapon.mainhand 1 mine 0 0 0 minecraft:air{inv_copy:1b}
scoreboard players reset #110dummy