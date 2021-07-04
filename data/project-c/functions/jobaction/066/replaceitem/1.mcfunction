item replace entity @s hotbar.1 with minecraft:hopper{display:{Name:'{"text":"バニシングエブリシング","color":"gray","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:スニーク長押し"}','{"text":"§f視線の先にテレポートする。"}','{"text":"§aCT:5+距離に応じて加算"}']},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1