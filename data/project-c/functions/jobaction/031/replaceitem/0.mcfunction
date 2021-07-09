function project-c:jobaction/031/replaceitem/0b
item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"レッドロッド","color":"red"}',Lore:['{"text":"§4§n吸血鬼の特性"}','{"text":"§f・スニークで低速落下出来るよ"}','{"text":"§7・§4§n§oBlood Blade§7で攻撃すると吸血ゲージが増えるよ"}','{"text":"§f・日中、外にいると大幅に弱体化するよ"}','{"text":"§7・アンデッド特効武器で攻撃されると衰弱するよ"}']}}
scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0
scoreboard players set #031-15 counter 15