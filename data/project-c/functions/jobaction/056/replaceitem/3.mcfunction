item replace entity @s hotbar.3 with minecraft:emerald{display:{Name:'{"text":"サイコフレームの共振","color":"white","italic":"false","underlined":"true","bold":"true"}',Lore:['{"text":"§e発動:常時"}','{"text":"§f自身がダメージを負った時に追加ダメージを負うが"}','{"text":"§f同時に周囲の味方に回復を付与させる。"}']},HideFlags:1,Enchantments:[{id:"minecraft:sharpness",lvl:0}]} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3