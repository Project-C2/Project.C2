item replace entity @s hotbar.3 with minecraft:feather{display:{Name:'{"text":"スライディング","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:スニーク長押し(手に持たなくても発動可能)"}','{"text":"§fスムーズに移動できます。"}','{"text":"§aCT:5"}']},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3