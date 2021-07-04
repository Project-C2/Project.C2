item replace entity @s hotbar.3 with minecraft:emerald{display:{Name:'{"text":"オブジェクトバースト","color":"gold","italic":false,"underlined":false}',Lore:['{"text":"§e発動:スニーク"}','{"text":"§fホットバーの6、7、8のアイテムを全て使用する。"}','{"text":"§f全てのアイテムに効果があるわけではない。"}','{"text":"§f使用したアイテムは消滅する。"}','{"text":"§aCT:60"}']},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3