item replace entity @s hotbar.2 with minecraft:end_portal_frame{display:{Name:'{"text":"帰還のゲート"}',Lore:['{"text":"発動:ジャンプ"}','{"text":"ゲートを作成する。"}']},Unbreakable:1b} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2