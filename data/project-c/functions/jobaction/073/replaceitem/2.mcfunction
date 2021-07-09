item replace entity @s hotbar.2 with minecraft:prismarine_crystals{display:{Name:'{"text":"§b§lEthereum Purification§r","color":"light_blue","italic":"false","underlined":"false"}',Lore:['{"text":"§f発動：スニーク"}','{"text":"§f周囲のマナを暴走させエーテリウムを精製する"}','{"text":"§3自然から得られるNeutral"}','{"text":"§6光から得られるLight"}','{"text":"§5闇から得られるDark"}','{"text":"§f以上3つのエーテリウムがランダムで精製される"}','{"text":"§7少しマナを消費する"}','{"text":"§aCT:5"}']},HideFlags:63} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2