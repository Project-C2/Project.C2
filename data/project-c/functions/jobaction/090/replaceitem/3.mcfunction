item replace entity @s hotbar.3 with minecraft:wither_skeleton_skull{display:{Name:'{"text":"ウィスパーズオブマッドネス","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f敵の耳にロードオブテラーの名を囁く。"}','{"text":"§fあらゆるものが彼の声を聞くだろう。"}','{"text":"§aCT:20"}']},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3