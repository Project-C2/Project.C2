scoreboard players set @s[scores={stockcounter=..0},gamemode=!spectator] stockcounter 0

item replace entity @s[scores={stockcounter=0}] hotbar.2 with minecraft:snowball{display:{Name:'{"text":"スモークグレネード","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f一定時間、周囲に鈍足と毒を付与する"}','{"text":"§fグレネードを投擲する。"}','{"text":"§aCT:30/ストック:2"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

item replace entity @s[scores={stockcounter=1}] hotbar.2 with minecraft:snowball{display:{Name:'{"text":"スモークグレネード","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f一定時間、周囲に鈍足と毒を付与する"}','{"text":"§fグレネードを投擲する。"}','{"text":"§aCT:30/ストック:2"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 2


item replace entity @s enderchest.2 from entity @s container.2
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5

tag @s add SkillReady2