item replace entity @s hotbar.3 with minecraft:phantom_membrane{display:{Name:'{"text":"幻影＝ファントムー","color":"dark_gray","italic":"false","underlined":"true"}',Lore:['{"text":"§e発動:スニーク"}','{"text":"§f周囲のアンデッドを生け贄に捧げてファントムを召喚する。"}','{"text":"§c※生け贄の数が多いほど召喚するファントムが強力になる。"}','{"text":"§aCT:60"}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3