item replace entity @s hotbar.3 with minecraft:bow{Enchantments:[{id:"minecraft:infinity",lvl:1},{id:"minecraft:punch",lvl:2}],display:{Name:'{"text":"パワーショット"}',Lore:['{"text":"発動:矢を放つ"}','{"text":"強力な一撃を放つ。"}']},Unbreakable:1b}
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3