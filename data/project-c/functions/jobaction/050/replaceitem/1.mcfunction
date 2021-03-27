replaceitem entity @s hotbar.1 minecraft:arrow{display:{Name:'{"text":"グラップルフック","color":"red","italic":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f前方にワイヤーを飛ばす。"}','{"text":"§f着弾点に向かって引き寄せられる。"}','{"text":"§aCT:5"}']}} 1
scoreboard players set @s counter_1 0
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1