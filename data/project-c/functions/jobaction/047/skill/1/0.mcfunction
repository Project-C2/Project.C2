#CT
scoreboard players set @s CT1 0
#スキル効果
#共通
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 2 0.45
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 2 0.45
summon pig ~ ~ ~ {NoGravity:1b,Silent:1b,NoAI:1b,Health:5f,Tags:["047-Houki","047-HoukiSummoned"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:199980,ShowParticles:0b}],Attributes:[{Name:"generic.maxHealth",Base:5}],Invisible:1b,Saddle:1b}
summon armor_stand ~ ~ ~ {ShowArms:1b,Pose:{LeftArm:[-80f,-10f,0f],RightArm:[-90f,0f,90f]},HandItems:[{id:"minecraft:stick",Count:1b},{id:"minecraft:hay_block",Count:1b}],Tags:["047-Houki2","047-HoukiSummoned"],Invisible:1b,Marker:1b}
scoreboard players operation @e[tag=047-HoukiSummoned] playerNumber = @s playerNumber
scoreboard players add @e[tag=047-HoukiSummoned] counter_1 0
tag @e[tag=047-HoukiSummoned] remove 047-HoukiSummoned
data merge block -61 2 -20 {auto:1b}
#リセット
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1