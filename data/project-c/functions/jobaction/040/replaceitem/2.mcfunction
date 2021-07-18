item replace entity @s hotbar.2 with minecraft:golden_pickaxe{display:{Name:'{"text":"天の鎖"}',Lore:['{"text":"発動:スニーク"}','{"text":"効果:前方に敵の動きを強制的に封じる鎖を打ち出す。"}','{"text":"CT:20"}']},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:1} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2