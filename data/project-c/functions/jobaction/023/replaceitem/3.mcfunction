item replace entity @s hotbar.3 with minecraft:enchanted_book{display:{Name:'{"text":"Assist Book","italic":false}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f属性を指定し、CT回復速度を倍加する。"}','{"text":"§7無§f→§b氷§f→§d闇§f→§c火§f→§a風§f→§7無"}']},HideFlags:1} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3