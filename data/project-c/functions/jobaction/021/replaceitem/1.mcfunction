item replace entity @s hotbar.1 with minecraft:ender_eye{display:{Name:'{"text":"バルカンショットガン","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック/右クリック長押し"}','{"text":"§fボタンを離すとショットガンを放つ。"}','{"text":"§f長押しすると一点に収束する。"}','{"text":"§aCT:10"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1