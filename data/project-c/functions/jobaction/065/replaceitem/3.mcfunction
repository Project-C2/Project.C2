item replace entity @s hotbar.3 with minecraft:blue_dye{display:{Name:'{"text":"スリットエッジ","color":"blue","italic":false,"underlined":true}',Lore:['{"text":"発動:右クリック","color":"yellow","italic":false}','{"text":"前方に剣を突き付ける","color":"white","italic":false}','{"text":"CT:10","color":"dark_green","italic":false}']},Enchantments:[{id:"minecraft:protection",lvl:-1}],HideFlags:1} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3