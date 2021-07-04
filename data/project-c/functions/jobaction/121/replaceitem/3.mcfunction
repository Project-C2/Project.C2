item replace entity @s hotbar.3 with minecraft:pumpkin_pie{display:{Name:"{\"text\":\"フードデリバリー\",\"color\":\"light_blue\",\"italic\":\"false\",\"underlined\":\"false\"}",Lore:["{\"text\":\"§e発動:スニーク\"}","{\"text\":\"§f前方に突進し、敵にはダメージ、\"}","{\"text\":\"§f味方には回復を付与する。\"}","{\"text\":\"§aCT:20\"}"]},HideFlags:1b,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3