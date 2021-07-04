item replace entity @s hotbar.3 with minecraft:lily_pad{display:{Name:'{"text":"霊峰の呼び掛け","color":"light_blue","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:ジャンプ"}','{"text":"§f効果:超広範囲に及ぶ索敵を行い最寄りの敵1体を"}','{"text":"§f発光させ、さらに自身は風の力を追加で得る。"}','{"text":"§aCT:60"}']},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3