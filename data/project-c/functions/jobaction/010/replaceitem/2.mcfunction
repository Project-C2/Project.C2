item replace entity @s hotbar.2 with minecraft:iron_trapdoor{display:{Name:'{"text":"トラバサミ"}',Lore:['{"text":"発動:スニーク"}','{"text":"ダメージを与える罠を設置する。"}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2