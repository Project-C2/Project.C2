item replace entity @s hotbar.2 with minecraft:nether_star{display:{Name:'{"text":"時符「プライベート・スクウェア」","color":"light_blue","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:スニーク"}','{"text":"§f一定時間、自身の周囲の時間を遅くする。"}','{"text":"§aCT:20"}']},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2