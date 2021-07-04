item replace entity @s hotbar.3 with minecraft:crossbow{display:{Name:'{"text":"死神の疾風","color":"light_blue","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:射撃"}','{"text":"§f直撃した相手にスタンを付与し、"}','{"text":"§f成功時にメイン武器のクロスボウを装填する。"}','{"text":"§aCT:30"}']},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3