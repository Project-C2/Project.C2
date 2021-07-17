item replace entity @s hotbar.3 with minecraft:enchanted_book{display:{Name:'{"text":"全て遠き理想郷"}',Lore:['{"text":"発動:自動"}','{"text":"効果:自身の再生能力を常に上昇させる。"}']},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:1} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3