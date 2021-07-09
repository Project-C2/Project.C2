item replace entity @s hotbar.1 with minecraft:beacon{display:{Name:'{"text":"ショートテレポート"}',Lore:['{"text":"発動:ジャンプ"}','{"text":"1秒間スペクテイターモードになり"}','{"text":"自由に動くことができる。"}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1