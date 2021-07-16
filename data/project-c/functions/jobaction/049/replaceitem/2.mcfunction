item replace entity @s hotbar.2 with minecraft:torch{display:{Name:'{"text":"シグマスフィア"}',Lore:['{"text":"発動:右クリック"}','{"text":"効果:不規則な電撃弾を放つ。"}','{"text":"着弾地点に雷を降らせる。CT:10"}']},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2