item replace entity @s hotbar.3 with minecraft:nether_star{display:{Name:'{"text":"古光霊の魔印","color":"gold","italic":false}',Lore:['{"text":"発動:自動","color":"yellow","italic":false}','{"text":"自身の体力が半分以上の時にCTが加速する。","color":"white","italic":false}']}} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3

