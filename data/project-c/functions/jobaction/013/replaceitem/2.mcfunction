item replace entity @s hotbar.2 with minecraft:spectral_arrow{display:{Name:'{"text":"サイコメトリー"}',Lore:['{"text":"発動:スニーク"}','{"text":"周囲20mの敵の位置を表示する。"}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2