item replace entity @s hotbar.3 with minecraft:fire_charge{display:{Name:'{"text":"恋符「マスタースパーク」","color":"white","italic":"false","underlined":"true","bold":"true"}',Lore:['{"text":"§e発動:スニーク"}','{"text":"§f詠唱の後、魔法のレーザーを前方に放つ"}','{"text":"§aCT:60"}']},HideFlags:1,Enchantments:[{id:"minecraft:sharpness",lvl:0}]} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3