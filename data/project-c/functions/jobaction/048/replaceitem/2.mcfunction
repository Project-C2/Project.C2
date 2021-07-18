item replace entity @s[scores={counter_2=0}] hotbar.2 with minecraft:amethyst_shard{display:{Name:'{"text":"スプレッドフェザー","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f魔法の発動形態を変える。"}','{"text":"§4単発弾→弾速が早い。Mana x1.0"}','{"text":"§2平行弾→3つの弾を放つ。Mana x1.5"}','{"text":"§1範囲攻撃→自身の周囲に効果。Mana x2.0"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

item replace entity @s[scores={counter_2=1}] hotbar.2 with minecraft:amethyst_cluster{display:{Name:'{"text":"スプレッドフェザー","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f魔法の発動形態を変える。"}','{"text":"§4単発弾→弾速が早い。Mana x1.0"}','{"text":"§2平行弾→3つの弾を放つ。Mana x1.5"}','{"text":"§1範囲攻撃→自身の周囲に効果。Mana x2.0"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

item replace entity @s[scores={counter_2=2}] hotbar.2 with minecraft:amethyst_block{display:{Name:'{"text":"スプレッドフェザー","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f魔法の発動形態を変える。"}','{"text":"§4単発弾→弾速が早い。Mana x1.0"}','{"text":"§2平行弾→3つの弾を放つ。Mana x1.5"}','{"text":"§1範囲攻撃→自身の周囲に効果。Mana x2.0"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

execute if entity @s[tag=!SkillReady2] run playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2

item replace entity @s enderchest.2 from entity @s container.2