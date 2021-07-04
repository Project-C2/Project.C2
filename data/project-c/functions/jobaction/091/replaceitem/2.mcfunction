item replace entity @s hotbar.2 with minecraft:quartz{display:{Name:'{"text":"ニューマティックサージ","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:スニーク(戦闘外の時のみCT回復)"}','{"text":"§f強力な回復を周囲に行う、アウトライダーに人気の戦術。"}','{"text":"§aCT:15"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2