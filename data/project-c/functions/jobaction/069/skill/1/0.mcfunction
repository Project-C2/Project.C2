#判定
#CT
scoreboard players set @s CT1 1195
scoreboard players set @s usedSkill 1

#スキル効果
#共通
playsound minecraft:block.anvil.place master @a ~ ~ ~ 1 2

execute if entity @s[team=Red] run effect give @e[team=Blue,tag=Battle,distance=..7,nbt={HurtTime:10s}] levitation 2 1
execute if entity @s[team=Blue] run effect give @e[team=Red,tag=Battle,distance=..7,nbt={HurtTime:10s}] levitation 2 1

#リセット
tag @s remove SkillReady1