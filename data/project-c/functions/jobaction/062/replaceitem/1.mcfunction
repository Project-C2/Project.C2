item replace entity @s hotbar.1 with minecraft:lily_of_the_valley{display:{Name:'{"text":"人符「現世斬」","color":"light_blue","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f効果:前方に踏み込み相手を切り抜ける。"}','{"text":"§aCT:7/ストック:3"}']},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.2 from entity @s container.1

item replace entity @s[scores={stockcounter=0}] hotbar.1 with minecraft:compass

item replace entity @s[scores={stockcounter=1}] hotbar.1 with minecraft:lily_of_the_valley{display:{Name:'{"text":"人符「現世斬」","color":"light_blue","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f効果:前方に踏み込み相手を切り抜ける。"}','{"text":"§aCT:7/ストック:3"}']},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63} 1

item replace entity @s[scores={stockcounter=2}] hotbar.1 with minecraft:lily_of_the_valley{display:{Name:'{"text":"人符「現世斬」","color":"light_blue","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f効果:前方に踏み込み相手を切り抜ける。"}','{"text":"§aCT:7/ストック:3"}']},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63} 2

item replace entity @s[scores={stockcounter=3}] hotbar.1 with minecraft:lily_of_the_valley{display:{Name:'{"text":"人符「現世斬」","color":"light_blue","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f効果:前方に踏み込み相手を切り抜ける。"}','{"text":"§aCT:7/ストック:3"}']},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63} 3
