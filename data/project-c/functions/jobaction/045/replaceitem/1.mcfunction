item replace entity @s hotbar.1 with minecraft:zombie_head{display:{Name:'{"text":"不死霊召喚＝サモンアンデッド","color":"dark_purple","italic":"false","underlined":"true"}',Lore:['{"text":"§e発動:スニーク"}','{"text":"§f四体のアンデッドを召喚する。"}','{"text":"§aCT:30"}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1