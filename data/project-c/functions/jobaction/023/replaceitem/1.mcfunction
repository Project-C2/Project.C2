item replace entity @s hotbar.1 with minecraft:blaze_rod{display:{Name:'{"text":"Shot Wand","italic":false}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f指定した属性の魔法弾を発射。"}','{"text":"§7無(CT:10):魔力の針を高速発射。"}','{"text":"§b氷(CT:20):敵を凍らせる氷塊弾を発射。"}','{"text":"§d闇(CT:22):再生無効化と衰弱を付与する闇弾を放つ。"}','{"text":"§c火(CT:16):敵を燃やし尽くす火炎弾を放つ。"}','{"text":"§a風(CT:6):風を飛ばし、敵を風向きと逆向きへ弾く。"}','{"text":"§2共通CT:3"}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1