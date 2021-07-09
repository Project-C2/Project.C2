item replace entity @s hotbar.2 with minecraft:brain_coral{display:{Name:'{"text":"サイコソード","color":"white","italic":false}',Lore:['{"text":"発動: 右クリック","color":"yellow","italic":false}','{"text":"サイコソードが闇を裂いて、前方を薙ぎ払う。","color":"white","italic":false}','{"text":"CT:10","color":"green","italic":false}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2
