item replace entity @s hotbar.2 with minecraft:player_head{display:{Name:'{"text":"コック","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:スニーク"}','{"text":"§f鍋を設置して周囲のアイテムを変化させる。"}','{"text":"§aCT:40"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}],SkullOwner:{Id:[I;-2009337434,913129478,-1091314930,2041836320],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTM1ZTg3YTMzZTgxOGNmZTk3OWQ3YzEyMzk1OTAzMGE1MDVkZTVhZGY0NTZkMzI4MTMwNGU5N2MzN2UwYWNlZSJ9fX0="}]}}} 1
item replace entity @s enderchest.2 from entity @s container.2
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2