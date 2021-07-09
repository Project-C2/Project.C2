item replace entity @s hotbar.1 with minecraft:ender_eye{display:{Name:'{"text":"帰還のパール"}',Lore:['{"text":"発動:ジャンプ"}','{"text":"ビーコンの位置にテレポートする。"}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1