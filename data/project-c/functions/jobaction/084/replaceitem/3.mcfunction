item replace entity @s hotbar.3 with minecraft:nether_star{display:{Name:'{"text":"霊符「夢想封印」","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f敵に向かう弾幕を放つ。"}','{"text":"§aCT:120 / 一試合3回まで"}']},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3