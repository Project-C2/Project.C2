replaceitem entity @s[scores={counter_3=0}] hotbar.1 minecraft:furnace{display:{Name:'{"text":"SEAR","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f効果:炎を放ち、お客様をこんがりきつね色に焼く。"}','{"text":"§aCT:8"}']},HideFlags:63} 1

replaceitem entity @s[scores={counter_3=1}] hotbar.1 minecraft:furnace{display:{Name:'{"text":"FLAMBE","color":"yellow","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f効果:炎を放ち、お客様を灰になるまで焼く。"}','{"text":"§aCT:8"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1