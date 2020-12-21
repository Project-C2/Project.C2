#CT
scoreboard players set @s CT3 600
scoreboard players set @s counter_3 30

playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 2
particle minecraft:explosion ~ ~1 ~ 0 0 0 1 1
particle minecraft:firework ~ ~1 ~ 0.1 0.1 0.1 1 30 force
#スキル効果
#共通

tag @e[type=arrow,distance=..5,limit=1,sort=nearest] add ArrowSinigami
data merge entity @e[type=arrow,distance=..5,limit=1,sort=nearest,tag=ArrowSinigami] {NoGravity:1b}
data merge block -81 2 31 {auto:1b}

#リセット
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3