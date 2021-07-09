item replace entity @s hotbar.1 with minecraft:flint_and_steel{display:{Name:'{"text":"Short Flight","italic":false,"color":"aqua"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f前方へ飛翔する。"}','{"text":"§aゲージ消費:2"}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1