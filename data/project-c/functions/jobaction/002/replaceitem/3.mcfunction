item replace entity @s hotbar.3 with minecraft:fire_charge{display:{Name:'{"text":"覚醒"}',Lore:['{"text":"発動:スニーク"}','{"text":"一定時間能力上昇+デバフ無効。"}']}}
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3