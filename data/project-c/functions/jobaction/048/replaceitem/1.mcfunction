item replace entity @s[scores={counter_1=0}] hotbar.1 with minecraft:white_candle{display:{Name:'{"text":"エレメンタルエクスチェンジ","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f魔法の属性を変える。"}','{"text":"§7光属性→対象にダメージを与える。Mana = 50"}','{"text":"§c火属性→対象を炎上させる。Mana = 80"}','{"text":"§3水属性→対象を鈍足にする。Mana = 150"}','{"text":"§a風属性→味方を癒す。Mana = 100"}','{"text":"§e雷属性→味方のCTを5秒短縮する。Mana = 120"}','{"text":"§6土属性→対象に大きなダメージを与える。Mana = 200"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

item replace entity @s[scores={counter_1=1}] hotbar.1 with minecraft:red_candle{display:{Name:'{"text":"エレメンタルエクスチェンジ","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f魔法の属性を変える。"}','{"text":"§7光属性→対象にダメージを与える。Mana = 50"}','{"text":"§c火属性→対象を炎上させる。Mana = 80"}','{"text":"§3水属性→対象を鈍足にする。Mana = 150"}','{"text":"§a風属性→味方を癒す。Mana = 100"}','{"text":"§e雷属性→味方のCTを5秒短縮する。Mana = 120"}','{"text":"§6土属性→対象に大きなダメージを与える。Mana = 200"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

item replace entity @s[scores={counter_1=2}] hotbar.1 with minecraft:light_blue_candle{display:{Name:'{"text":"エレメンタルエクスチェンジ","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f魔法の属性を変える。"}','{"text":"§7光属性→対象にダメージを与える。Mana = 50"}','{"text":"§c火属性→対象を炎上させる。Mana = 80"}','{"text":"§3水属性→対象を鈍足にする。Mana = 150"}','{"text":"§a風属性→味方を癒す。Mana = 100"}','{"text":"§e雷属性→味方のCTを5秒短縮する。Mana = 120"}','{"text":"§6土属性→対象に大きなダメージを与える。Mana = 200"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

item replace entity @s[scores={counter_1=3}] hotbar.1 with minecraft:lime_candle{display:{Name:'{"text":"エレメンタルエクスチェンジ","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f魔法の属性を変える。"}','{"text":"§7光属性→対象にダメージを与える。Mana = 50"}','{"text":"§c火属性→対象を炎上させる。Mana = 80"}','{"text":"§3水属性→対象を鈍足にする。Mana = 150"}','{"text":"§a風属性→味方を癒す。Mana = 100"}','{"text":"§e雷属性→味方のCTを5秒短縮する。Mana = 120"}','{"text":"§6土属性→対象に大きなダメージを与える。Mana = 200"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

item replace entity @s[scores={counter_1=4}] hotbar.1 with minecraft:yellow_candle{display:{Name:'{"text":"エレメンタルエクスチェンジ","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f魔法の属性を変える。"}','{"text":"§7光属性→対象にダメージを与える。Mana = 50"}','{"text":"§c火属性→対象を炎上させる。Mana = 80"}','{"text":"§3水属性→対象を鈍足にする。Mana = 150"}','{"text":"§a風属性→味方を癒す。Mana = 100"}','{"text":"§e雷属性→味方のCTを5秒短縮する。Mana = 120"}','{"text":"§6土属性→対象に大きなダメージを与える。Mana = 200"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

item replace entity @s[scores={counter_1=5}] hotbar.1 with minecraft:brown_candle{display:{Name:'{"text":"エレメンタルエクスチェンジ","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f魔法の属性を変える。"}','{"text":"§7光属性→対象にダメージを与える。Mana = 50"}','{"text":"§c火属性→対象を炎上させる。Mana = 80"}','{"text":"§3水属性→対象を鈍足にする。Mana = 150"}','{"text":"§a風属性→味方を癒す。Mana = 100"}','{"text":"§e雷属性→味方のCTを5秒短縮する。Mana = 120"}','{"text":"§6土属性→対象に大きなダメージを与える。Mana = 200"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

execute if entity @s[tag=!SkillReady1] run playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1