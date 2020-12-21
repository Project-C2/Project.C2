execute at @a[distance=0.01..] if score @a[limit=1,distance=..0.01,sort=nearest] playerNumber = @s playerNumber run tellraw @a[limit=1,distance=..0.01,sort=nearest] [{"selector":"@s","color":"red"},{"text":"との盟約が解除されました。"}]
execute at @a[distance=0.01..] if score @a[limit=1,distance=..0.01,sort=nearest] playerNumber = @s playerNumber run playsound minecraft:entity.wither_skeleton.death master @a[limit=1,distance=..0.01,sort=nearest] ~ ~ ~ 2 0.5
tellraw @s {"text":"盟約を解除しました。","color":"red"}
playsound minecraft:entity.wither_skeleton.death master @s ~ ~ ~ 2 0.5
scoreboard players reset @s counter_2
scoreboard players set @s CT3 1199
scoreboard players reset @s drop
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3