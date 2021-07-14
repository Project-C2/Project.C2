item replace entity @s hotbar.2 with minecraft:lily_of_the_valley{display:{Name:'{"text":"人符「現世斬」","color":"light_blue","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f効果:前方に踏み込み相手を切り抜ける。"}','{"text":"§aCT:7/ストック:3"}']},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.2 from entity @s container.1