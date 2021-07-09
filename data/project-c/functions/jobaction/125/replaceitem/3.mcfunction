item replace entity @s hotbar.3 with minecraft:feather{display:{Name:'{"text":"キャノンボール","color":"light_purple","italic":false}',Lore:['{"text":"発動:空中でもう一度ジャンプ","color":"yellow","italic":false}','{"text":"前方に発射される。","color":"white","italic":false}','{"text":"CT:10","color":"green","italic":false}']}} 1
item replace entity @s armor.chest with minecraft:elytra{display:{Name:'{"text":"glass wings","color":"white","italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],Unbreakable:1b}

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3