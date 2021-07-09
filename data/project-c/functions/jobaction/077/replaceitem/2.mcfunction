item replace entity @s hotbar.2 with minecraft:orange_dye{display:{Name:'{"text":"Backblast","color":"yellow","italic":false}',Lore:['{"text":"発動:スニーク(手に持たなくても使用可能)","color":"yellow","italic":false}','{"text":"後方へ飛びのき、前方を爆破する。","color":"white","italic":false}','{"text":"長押しで飛距離が伸びる。","color":"white","italic":false}','{"text":"発動時1秒間無敵時間が発生。","color":"white","italic":false}','{"text":"CT:8","color":"green","italic":false}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2