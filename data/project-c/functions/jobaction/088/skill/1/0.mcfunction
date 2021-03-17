#CT
scoreboard players set @s CT1 1110
scoreboard players set @s usedSkill 1

scoreboard players set @s counter 0

#1tick前のAECにタグ付け
tag @s add 088-S1-used
execute as @e[tag=088-1-position] if score @s playerNumber = @a[tag=088-S1-used,sort=nearest,limit=1] playerNumber run tag @s add 088-S1-stand
tag @s remove 088-S1-used

#移動前にエフェクトを表示
particle crimson_spore ~ ~ ~ 0 0 0 0 512 normal
particle dragon_breath ~ ~ ~ 0.3 0.3 0.3 0.05 32 normal

execute if entity @e[tag=088-S1-stand] run function project-c:jobaction/088/skill/1/1

#バフを付与する。
#counterが-1な場合、移動に成功していないため、プレイヤーに通知しCTを短縮する
effect give @s minecraft:resistance 1 10 true
effect give @s minecraft:speed 2 3 true
#execute if entity @s[tag=!088-S3-used] run effect give @s invisibility 2 0 false

playsound minecraft:block.soul_soil.break master @a ~ ~ ~ 2 0.5
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1.5

execute if entity @s[tag=088-S3-used] run scoreboard players add @s CT1 30
execute if score @s counter matches -1 run tellraw @s {"text":"\u79fb\u52d5\u5148\u304c\u898b\u3064\u304b\u3089\u306a\u3044\uff01","color":"#D5AA3A"}
execute if score @s counter matches -1 run scoreboard players add @s CT1 30

#パーティクル表示用
effect give @s bad_omen 1 88 true
tag @s add 088-S1-particle
data merge block -49 2 89 {auto:1b}

#Reset
tag @s remove SkillReady1
scoreboard players reset @s counter
scoreboard players reset @s counter_1
scoreboard players reset @s counter_2
