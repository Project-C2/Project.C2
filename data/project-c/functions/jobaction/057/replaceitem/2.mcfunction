item replace entity @s hotbar.2 with minecraft:pufferfish_bucket{display:{Name:'{"text":"雨乞い","color":"dark_aqua","italic":"false","underlined":"true"}',Lore:['{"text":"§e発動:スニーク"}','{"text":"§f30秒間、雨が降るようになる。"}','{"text":"§f効果時間が終了すると天候が晴れになる。"}','{"text":"§aCT:30"}']},HideFlags:1,Enchantments:[{id:"minecraft:sharpness",lvl:0}]} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2