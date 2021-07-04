item replace entity @s hotbar.2 with nautilus_shell{display:{Name:'{"text":"アポカリプティックサウンド","color":"white","italic":false}',Lore:['{"text":"発動:スニーク","color":"yellow","italic":false}','{"text":"その場で飛び上がり、広範囲に連続ダメージを与える","color":"white","italic":false}','{"text":"ダメージ範囲内の飛び道具を敵味方関係なく破壊する","color":"white","italic":false}','{"text":"CT:20","color":"green","italic":false}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2