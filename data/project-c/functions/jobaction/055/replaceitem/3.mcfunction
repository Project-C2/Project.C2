item replace entity @s hotbar.3 with minecraft:emerald{display:{Name:'{"text":"サイコフレームの共振","color":"white","italic":"false","underlined":"true","bold":"true"}',Lore:['{"text":"§e発動:常時"}','{"text":"§f周囲の味方に攻撃力上昇と採掘速度上昇を付与するが、"}','{"text":"§f自身がダメージを食らうと周囲の味方もダメージを負う。"}']},HideFlags:1,Enchantments:[{id:"minecraft:sharpness",lvl:0}]} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3