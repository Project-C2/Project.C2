item replace entity @s hotbar.2 with minecraft:magma_cream{display:{Name:'{"text":"陰陽玉","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f最寄りの味方一人の座標にテレポートする。"}','{"text":"§aCT:30"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2