item replace entity @s hotbar.2 with minecraft:nether_star{display:{Name:'{"text":"ホーリースタンス","color":"yellow","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:ジャンプ"}','{"text":"§f攻撃モードと防御モードを切り替える。"}','{"text":"§fメイン武器と第一スキルが変化する。"}','{"text":"§aCT:1"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2