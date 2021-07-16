item replace entity @s hotbar.3 with minecraft:honeycomb{display:{Name:'{"text":"浄滅の雷鼓"}',Lore:['{"text":"発動:右クリック"}','{"text":"効果:周囲の味方に一定時間デバフを無効化+"}','{"text":"CT加速の加護を付与する。CT:60"}']},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3