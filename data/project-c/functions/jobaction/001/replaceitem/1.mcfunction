item replace entity @s hotbar.1 with minecraft:glass_pane{display:{Name:'{"text":"シールドバッシュ"}',Lore:['{"text":"発動:スニーク"}','{"text":"周囲の敵をスタンさせる。"}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1