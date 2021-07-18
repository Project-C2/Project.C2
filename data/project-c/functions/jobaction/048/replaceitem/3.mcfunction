item replace entity @s hotbar.3 with minecraft:heart_of_the_sea{display:{Name:'{"text":"エーテルブラスト","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f精霊の力を解放し、マナを全回復し"}','{"text":"§f一定時間マナの回復量が強化される。"}','{"text":"§aCT:60"}']},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3