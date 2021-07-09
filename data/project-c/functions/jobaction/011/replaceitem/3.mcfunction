item replace entity @s hotbar.3 with minecraft:totem_of_undying{display:{Name:'{"text":"復活の像"}',Lore:['{"text":"発動:倒れる"}','{"text":"復活することができる。"}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3