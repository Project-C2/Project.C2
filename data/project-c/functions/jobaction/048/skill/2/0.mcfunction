#判定

#スキル効果
#共通
playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 2.1 2
playsound minecraft:block.amethyst_block.hit master @a ~ ~ ~ 2.1 1.5
scoreboard players add @s counter_2 1
scoreboard players set @s[scores={counter_2=3..}] counter_2 0

function project-c:jobaction/048/replaceitem/2
#リセット