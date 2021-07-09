item replace entity @s hotbar.1 with minecraft:redstone_block{display:{Name:'{"text":"§5§lMaking Magic§r","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§f発動：スニーク"}','{"text":"§f§f魔法を作成する"}','{"text":"§f作成中は行動が不能になる"}','{"text":"§f§fエーテリウムによって作れる魔法が変わる"}','{"text":"§aCT:20"}']},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1