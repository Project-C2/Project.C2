item replace entity @s hotbar.1 with minecraft:golden_shovel{display:{Name:'{"text":"スターロッド","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f短距離に流星を飛ばして攻撃する。"}','{"text":"§f命中した相手は発光する。"}','{"text":"§aCT:2"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1