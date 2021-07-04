item replace entity @s hotbar.1 with minecraft:bow{Enchantments:[{id:"minecraft:infinity",lvl:1}],display:{Name:'{"text":"スプレッドアロー"}',Lore:['{"text":"発動:矢を放つ"}','{"text":"着弾点から拡散する矢を放つ。"}']},Unbreakable:1b}
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1