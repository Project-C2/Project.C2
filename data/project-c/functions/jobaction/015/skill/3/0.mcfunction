scoreboard players set @s CT3 800

#体力回復実行
effect give @s instant_health 1 2 true
summon area_effect_cloud ~ ~0.7 ~ {Tags:["015-this"],Particle:"",Radius:0.8f,Duration:5,Age:4,WaitTime:1,Potion:"minecraft:strong_healing"}
data modify entity @e[tag=015-this,limit=1,sort=nearest] Owner set from entity @s UUID
tag @e[tag=015-this,limit=1,sort=nearest] remove 015-this

#counterセット/コマブロ起動
scoreboard players set @s counter 160
data merge block 63 2 -122 {auto:1b}

#演出
playsound entity.drowned.swim master @a ~ ~ ~ 0.5 0.5
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 0.5
particle minecraft:damage_indicator ~ ~ ~ 1 1 1 1 128
particle soul ~ ~0.5 ~ 2 1 2 0.01 32

tag @s remove SkillReady3
scoreboard players set @s usedSkill 3