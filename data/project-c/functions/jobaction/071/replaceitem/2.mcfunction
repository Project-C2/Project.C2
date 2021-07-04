item replace entity @s hotbar.2 with minecraft:oak_sapling{display:{Name:'{"text":"グラスレイド","color":"light_blue","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:ジャンプ"}','{"text":"§f風の力を消費し味方を強化する結界を張る。"}','{"text":"§f風の力を消費し味方を強化する結界を張る。"}','{"text":"§aCT:30"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2