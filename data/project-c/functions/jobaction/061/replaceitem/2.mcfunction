item replace entity @s hotbar.2 with minecraft:ice{display:{Name:'{"text":"氷の壁","color":"light_blue","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:スニーク"}','{"text":"§f氷の壁を発生させる。"}','{"text":"§f体力が♡4以下の敵が食らうと即死する。"}','{"text":"§aCT:20"}']},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2