execute unless entity @s[scores={counter_4=600..}] run item replace entity @s hotbar.3 with minecraft:stick{display:{Name:'{"text":"叛逆の雷は焼き尽くした","color":"yellow","italic":false}',Lore:['{"text":"--------------------------------","italic":false,"color":"gray"}','{"text":"スニーク / CT:60 / 戦闘開始から30秒経過","italic":false,"color":"aqua"}','{"text":"前方へと爆発の嵐と雷を放つ。","italic":false,"color":"white"}','{"text":"","italic":false,"color":"white"}','{"text":"--------------------------------","italic":false,"color":"gray"}']}} 1
execute if entity @s[scores={counter_4=600..}] run item replace entity @s hotbar.3 with minecraft:blaze_rod{display:{Name:'{"text":"叛逆の雷は焼き尽くした","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"--------------------------------","italic":false,"color":"gray"}','{"text":"スニーク / CT:60 / 戦闘開始から30秒経過","italic":false,"color":"aqua"}','{"text":"前方へと爆発の嵐と雷を放つ。","italic":false,"color":"white"}','{"text":"","italic":false,"color":"white"}','{"text":"--------------------------------","italic":false,"color":"gray"}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3

