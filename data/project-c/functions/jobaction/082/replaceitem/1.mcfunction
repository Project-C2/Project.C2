item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick{display:{Name:'{"text":"リローデッド","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f効果:矢を5本供給し、"}','{"text":"§f事前に打った矢から矢の雨を降らす。"}','{"text":"§aCT:2"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1