item replace entity @s hotbar.1 with minecraft:bone_meal{display:{Name:'{"text":"風王結界"}',Lore:['{"text":"発動:スニーク"}','{"text":"効果:発動後一定時間透明になり、"}','{"text":"終了後周囲を爆発させる。"}','{"text":"CT:20"}']},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:1} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1