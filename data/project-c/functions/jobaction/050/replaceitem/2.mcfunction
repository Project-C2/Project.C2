item replace entity @s hotbar.2 with minecraft:cyan_dye{display:{Name:'{"text":"チャージドガントレット","color":"gray","italic":"false"}',Lore:['{"text":"§e発動:スニーク長押し"}','{"text":"§f前方に放たれ、通りかかった敵に大ダメージを与える。"}','{"text":"§fチャージした時間に応じて威力と距離が増す。"}','{"text":"§aCT:8"}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2