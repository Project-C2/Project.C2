item replace entity @s hotbar.3 with minecraft:campfire{display:{Name:'{"text":"火炎放射","color":"red","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f前方の敵を炎上させる火を放つ。"}','{"text":"§aCT:30"}']},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3