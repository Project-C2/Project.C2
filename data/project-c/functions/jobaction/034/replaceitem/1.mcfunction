item replace entity @s hotbar.1 with minecraft:glowstone_dust{display:{Name:'{"text":"サンダーコメット","color":"yellow"}',Lore:['{"text":"§e発動:スニーク"}','{"text":"§f周囲の狼に雷を落とし、"}','{"text":"§7その周囲の味方にバフを付与。"}','{"text":"§aCT:15"}']},Enchantments:[{}],HideFlags:1} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1