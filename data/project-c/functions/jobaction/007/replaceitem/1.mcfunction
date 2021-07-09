item replace entity @s hotbar.1 with minecraft:blaze_powder{display:{Name:'{"text":"火のエレメント"}',Lore:['{"text":"発動:雪玉"}','{"text":"火の玉を発射する。"}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1