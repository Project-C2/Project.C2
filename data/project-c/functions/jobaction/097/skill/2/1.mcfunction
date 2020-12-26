playsound minecraft:entity.illusioner.mirror_move master @a[distance=0.1..] ~ ~ ~ 1 2
particle minecraft:reverse_portal ~ ~ ~ 0.5 1 0.5 1 800 normal @a
particle minecraft:reverse_portal ~ ~ ~ 0.5 1 0.5 1 200 force @a

execute positioned as @e[tag=097flying] run tp @s ~ ~ ~
kill @e[tag=097flying]
effect give @s minecraft:levitation 1 0
effect give @s minecraft:glowing 1 0

execute at @s run playsound minecraft:item.shield.break master @a ~ ~ ~ 1 0.5
execute at @s run playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1 2
execute at @s run particle minecraft:reverse_portal ~ ~ ~ 0.5 1 0.5 1 800 normal @a
execute at @s run particle minecraft:reverse_portal ~ ~ ~ 0.5 1 0.5 1 200 force @a


scoreboard players set @s CT2 803
tag @s add SkillDelay2
scoreboard players operation @s counter_5 = @s subcounter
replaceitem entity @s hotbar.2 minecraft:spectral_arrow{display:{Name:'{"text":"La Troisième flèche","color":"gold","bold":true,"italic":true}',Lore:['{"text":"--------------------------------","italic":false,"color":"gray"}','{"text":"右クリック / CT:20","color":"aqua","italic":false}','{"text":"1回目:前方に無威力の矢を放つ。","color":"white","italic":false}','{"text":"2回目:放った矢が消滅していなければ、矢をキルして矢にtpする。","color":"white","italic":false}','{"text":"3回目:蒼星の矢を放ち、命中した敵をノックバックさせて追撃する。","color":"white","italic":false}','{"text":"--------------------------------","italic":false,"color":"gray"}',]},Enchantments:[{}],HideFlags:32} 1
scoreboard players reset @s counter_2
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2