item replace entity @s hotbar.2 with minecraft:lingering_potion{display:{Name:'{"text":"スラッシュジェム","color":"white","italic":false}',Lore:['{"text":"§e発動:投擲"}','{"text":"着弾点に斬撃を発生させて攻撃。"}','{"text":"CT:10","color":"green","italic":false}']},CustomPotionEffects:[{Id:31b,Amplifier:67b,Duration:1}],CustomPotionColor:5636095,HideFlags:32} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2