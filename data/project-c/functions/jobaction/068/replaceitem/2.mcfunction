item replace entity @s hotbar.2 with minecraft:white_dye{display:{Name:'{"text":"バルジレーザー照射モードZ","color":"light_blue","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f一定時間、指定した座標にレーザーを要請する。"}','{"text":"§fビーコンガンを使用するとその座標を狙う。"}','{"text":"§aCT:25"}']},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2