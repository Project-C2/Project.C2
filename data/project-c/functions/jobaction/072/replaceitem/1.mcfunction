item replace entity @s hotbar.1 with minecraft:peony{display:{Name:'{"text":"第五勢","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動：スニーク"}','{"text":"§f一定時間自身の攻撃後に追撃を起こす。"}','{"text":"§fまた効果中はジャンプで高く飛ぶことが出来る。"}','{"text":"§aCT:20"}']},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1