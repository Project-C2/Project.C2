item replace entity @s hotbar.3 with minecraft:dragon_egg{display:{Name:'{"text":"ブラックバリア","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:パッシブ"}','{"text":"§f次に受けるダメージを無効化する。"}','{"text":"§f効果発動後、15秒後に再展開される。"}']},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3