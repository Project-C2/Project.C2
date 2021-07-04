item replace entity @s hotbar.3 with minecraft:end_rod{display:{Name:'{"text":"瞬"}',Lore:['{"text":"発動:ジャンプ"}','{"text":"敵を攻撃しながら高速移動する。"}']}} 1
playsound minecraft:block.shulker_box.close master @s 0 0 0 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3