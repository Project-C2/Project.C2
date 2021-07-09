item replace entity @s hotbar.1 with minecraft:brick{display:{Name:'{"text":"地の宝具"}',Lore:['{"text":"地の力を秘めた宝具"}']},HideFlags:1,Enchantments:[{id:71,lvl:1}]} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1