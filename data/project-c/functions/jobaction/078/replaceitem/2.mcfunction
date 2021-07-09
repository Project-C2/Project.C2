item replace entity @s[scores={counter_3=0}] hotbar.2 with minecraft:coal{display:{Name:'{"text":"GLAZE","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:スニーク(手に持たなくても使用可能)"}','{"text":"§f効果:油の波に乗り、前方にダッシュする。"}','{"text":"§f通りかかったお客様を油まみれにする。"}','{"text":"§fこの効果中にSEARを与えると威力が上がる。"}','{"text":"§aCT:10"}']},HideFlags:63} 1

item replace entity @s[scores={counter_3=1}] hotbar.2 with minecraft:coal{display:{Name:'{"text":"MARINATE","color":"yellow","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:スニーク(手に持たなくても使用可能)"}','{"text":"§f効果:巨大な油の波に乗り、前方にダッシュする。"}','{"text":"§f通りかかったお客様を油まみれにする。"}','{"text":"§fこの効果中にSEARを与えると威力が上がる。"}','{"text":"§aCT:10"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2