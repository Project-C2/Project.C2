item replace entity @s hotbar.2 with minecraft:horn_coral_fan{display:{Name:'{"text":"デイン","color":"yellow","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック / もう一度右クリックで解放"}','{"text":"§f前方に雷を落とす。"}','{"text":"§fチャージにより威力が上昇する。"}','{"text":"§aMP:8/18/42"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2