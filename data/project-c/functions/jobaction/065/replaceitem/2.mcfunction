item replace entity @s hotbar.2 with minecraft:feather{display:{Name:'{"text":"エアスラッシュ","color":"light_purple","italic":false,"underlined":true}',Lore:['{"text":"発動:右クリック","color":"yellow","italic":false}','{"text":"高く飛びながら敵を切り上げる","color":"white","italic":false}','{"text":"CT:20","color":"dark_green","italic":false}']},Enchantments:[{id:"minecraft:protection",lvl:-1}],HideFlags:1} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2