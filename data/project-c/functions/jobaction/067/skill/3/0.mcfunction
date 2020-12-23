scoreboard players set @s CT3 1060
scoreboard players add @s counter_2 10
execute if score @s counter_2 matches 85.. run scoreboard players set @s counter_2 84
function project-c:jobaction/067/replaceitem/shield

execute positioned 0.0 0.0 0.0 run summon armor_stand ^ ^ ^1 {Tags:["067dummyStand"],Marker:1b,Invisible:1b,NoGravity:1b}
execute store result score #dummy CT1 run data get entity @e[tag=067dummyStand,limit=1] Pos[0] 100
execute store result score #dummy CT2 run data get entity @e[tag=067dummyStand,limit=1] Pos[1] 100
execute store result score #dummy CT3 run data get entity @e[tag=067dummyStand,limit=1] Pos[2] 100
kill @e[tag=067dummyStand]

execute anchored eyes run summon minecraft:arrow ^ ^-0.3 ^0.1 {Tags:["067slast","067dummyArrow"],life:1200s,damage:6.0d,NoGravity:1b,crit:1b,SoundEvent:"minecraft:ui.toast.out",Color:-1,PierceLevel:127b}
execute as @e[tag=067dummyArrow] store result entity @s Motion[0] double 0.015 run scoreboard players get #dummy CT1
execute as @e[tag=067dummyArrow] store result entity @s Motion[1] double 0.015 run scoreboard players get #dummy CT2
execute as @e[tag=067dummyArrow] store result entity @s Motion[2] double 0.015 run scoreboard players get #dummy CT3


particle minecraft:angry_villager ~ ~ ~1 1 1 1 1 40
playsound minecraft:entity.player.attack.strong master @a ~ ~1 ~ 1.2 0.7
playsound minecraft:entity.player.attack.knockback master @a ~ ~1 ~ 1.2 0.7
playsound minecraft:entity.player.attack.crit master @a ~ ~1 ~ 1.2 0.8
data modify entity @e[tag=067dummyArrow,limit=1] Owner set from entity @s UUID
tag @e[tag=067dummyArrow] remove 067dummyArrow
scoreboard players reset #dummy

data merge block -45 2 31 {auto:1b}
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3