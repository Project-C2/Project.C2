item replace entity @s hotbar.1 with minecraft:bow{display:{Name:'{"text":"バズーカ","color":"green","italic":"false","underlined":"true"}',Lore:['{"text":"§e発動:矢を放つ"}','{"text":"§f前方にバズーカを放つ。"}','{"text":"§aCT:10"}']},HideFlags:1,Enchantments:[{id:"minecraft:punch",lvl:3},{id:"minecraft:infinity",lvl:1}]} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1
