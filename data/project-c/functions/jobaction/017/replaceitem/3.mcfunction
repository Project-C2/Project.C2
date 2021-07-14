item replace entity @s hotbar.3 with minecraft:magma_block{display:{Name:'{"text":"ウェイクアップ","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f星々の力を借りて、天空から隕石を降らせる。"}','{"text":"§f発動直後は無敵になる。隕石は地形を貫通し、"}','{"text":"§f溢れた力は味方全体の攻撃力上昇を行う。"}','{"text":"§aCT:120"}']},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3