item replace entity @s hotbar.2 with minecraft:stonecutter{display:{Name:'{"text":"機甲部隊の超臨界","color":"yellow","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:スニーク"}','{"text":"§f自身に移動不可を付与する。"}','{"text":"§f3秒後に自身を爆発させ、味方全員にバフを付与。"}','{"text":"§f残りHPが少ない程爆発威力、爆発範囲、"}','{"text":"§fバフのレベルが上昇。"}','{"text":"§fキルする前に倒されると不発。"}','{"text":"§aCT:60"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2