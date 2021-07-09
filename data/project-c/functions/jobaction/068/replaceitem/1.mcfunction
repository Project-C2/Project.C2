item replace entity @s hotbar.1 with minecraft:daylight_detector{display:{Name:'{"text":"戦闘爆撃機KM6 プランX9","color":"gray","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f一定時間後に機銃掃射を要請する。"}','{"text":"§aCT:25"}']},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1