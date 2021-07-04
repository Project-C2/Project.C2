item replace entity @s hotbar.2 with minecraft:redstone_torch{display:{Name:'{"text":"ボムチップ","color":"red","italic":"false","underlined":"true"}',Lore:["§e発動:スニーク","§f放った矢が小規模の爆発を起こす。","§aCT:10"]}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2