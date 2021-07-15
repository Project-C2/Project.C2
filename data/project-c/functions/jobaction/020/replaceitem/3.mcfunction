item replace entity @s hotbar.3 with minecraft:magma_block{display:{Name:'{"text":"ドラゴストーム","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f発動時3秒間スペクテイターモードになり、"}','{"text":"§f最後に向いていた方向に"}','{"text":"§f炎の龍を召還し、前方を焼き尽くす。"}','{"text":"§aCT:30"}']},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3