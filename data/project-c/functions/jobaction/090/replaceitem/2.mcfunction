item replace entity @s hotbar.2 with minecraft:brick{display:{Name:'{"text":"コンカー","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック(戦闘外の時のみ使用可能)"}','{"text":"§f戦いを始める前から、早くも勝利を宣言する。"}','{"text":"§aCT:20"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2