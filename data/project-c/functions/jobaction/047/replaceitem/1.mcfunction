item replace entity @s hotbar.1 with minecraft:wheat{display:{Name:'{"text":"魔法のほうき","color":"green","italic":"false","underlined":"true"}',Lore:['{"text":"§e発動:スニーク"}','{"text":"§f魔法の空飛ぶほうきを召喚する。"}','{"text":"§c※30秒で魔力が抜け落ちる。"}','{"text":"§cまた、オフハンド持ち替えで上下移動をON/OFFする。"}','{"text":"§aCT:60"}']},HideFlags:1,Enchantments:[{id:"minecraft:sharpness",lvl:0}]} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1