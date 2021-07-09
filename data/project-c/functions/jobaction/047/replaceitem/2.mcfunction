item replace entity @s hotbar.2 with minecraft:sunflower{display:{Name:'{"text":"光撃「シュート・ザ・ムーン」","color":"yellow","italic":"false","underlined":"true"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f星を無数に飛ばして攻撃する。"}','{"text":"§aCT:30"}']},HideFlags:1,Enchantments:[{id:"minecraft:sharpness",lvl:0}]} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2