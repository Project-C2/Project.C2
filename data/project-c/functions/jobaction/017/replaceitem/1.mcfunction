item replace entity @s hotbar.1 with minecraft:red_glazed_terracotta{display:{Name:'{"text":"セットサークル","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:スニーク"}','{"text":"§f足元に一定時間持続する結界を創り出す。"}','{"text":"§f結界内ではクールタイムを加速させる。"}','{"text":"§aCT:30"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1