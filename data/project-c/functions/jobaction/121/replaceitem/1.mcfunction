item replace entity @s hotbar.1 with minecraft:bucket{display:{Name:"{\"text\":\"クリーンアップ\",\"color\":\"white\",\"italic\":\"false\",\"underlined\":\"false\"}",Lore:["{\"text\":\"§e発動:スニーク\"}","{\"text\":\"§f周囲に12秒間結界を展開。\"}","{\"text\":\"§fこの中でCustodianは無限ジャンプ可能になる。\"}","{\"text\":\"§f地上だとCT回復速度が加速する。\"}","{\"text\":\"§aCT:30\"}"]},HideFlags:1b,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1