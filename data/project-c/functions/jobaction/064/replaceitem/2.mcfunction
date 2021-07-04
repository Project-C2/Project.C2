item replace entity @s hotbar.2 with minecraft:lantern{display:{Name:'{"text":"リバーサー","color":"light_blue","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f前方の味方を複数回に渡り回復させる。"}','{"text":"§aCT:25"}']},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2