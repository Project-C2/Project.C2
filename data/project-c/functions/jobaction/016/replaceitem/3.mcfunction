item replace entity @s hotbar.3 with minecraft:bubble_coral{display:{Name:'{"text":"マダンテ","color":"dark_purple","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§fMPを全消費して最強の魔法を放つ。"}','{"text":"§f消費MPに応じて発生が早くなる"}','{"text":"§aCT:30"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3