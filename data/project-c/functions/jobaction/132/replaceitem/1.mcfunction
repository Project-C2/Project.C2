item replace entity @s hotbar.1 with minecraft:green_dye{display:{Name:'{"text":"ワイルドセンス","color":"green","italic":false}',Lore:['{"text":"発動:右クリック","italic":false,"color":"yellow"}','{"text":"自身を爆破して前方に打ち出す。","italic":false,"color":"white"}','{"text":"CT:10","italic":false,"color":"green"}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1

