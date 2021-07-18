#判定

#スキル効果
#共通
playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 2.1 2
playsound minecraft:block.amethyst_block.hit master @a ~ ~ ~ 2.1 1.5
scoreboard players add @s subcounter 1
scoreboard players set @s[scores={subcounter=2..}] subcounter 0
#リセット