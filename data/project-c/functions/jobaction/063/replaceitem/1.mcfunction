replaceitem entity @s[scores={counter_1=0}] hotbar.1 minecraft:redstone{display:{Name:'{"text":"ポーションコントロール","color":"red","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f投げるポーションが長距離まで届くようになる。"}','{"text":"§aCT:1"}']},HideFlags:1} 1

replaceitem entity @s[scores={counter_1=1}] hotbar.1 minecraft:glowstone_dust{display:{Name:'{"text":"ポーションコントロール","color":"red","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f投げるポーションが長距離まで届くようになる。"}','{"text":"§aCT:1"}']},HideFlags:1} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1