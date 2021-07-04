item replace entity @s hotbar.2 with minecraft:clock{display:{Name:'{"text":"宿命のポルトラン","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:スニーク"}','{"text":"§f数秒後に起動する超猛毒の罠を設置する。"}','{"text":"§aCT:20"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2