
scoreboard players set @s CT2 1200
execute store result score #-118 counter run data get entity @s SelectedItem.tag.cooltime
scoreboard players operation #-118 counter *= #20 counter
scoreboard players operation @s CT2 -= #-118 counter


particle minecraft:firework ~ ~1 ~ 0 0 0 0.2 20 force @a

tag @s add -118-

execute as @a[tag=Battle] if score @s playerNumber = @a[tag=-118-,limit=1] counter run tag @s add -118-2-a
execute if entity @a[tag=-118-2-a,limit=1] at @a[tag=-118-2-a] facing entity @a[tag=-118-,limit=1] feet run function project-c:jobaction/118/skill/2/particle




scoreboard players set #-118 counter_1 1200
scoreboard players set #-118 counter_2 1200

scoreboard players operation #-118 counter_1 -= @s CT1
scoreboard players operation #-118 counter_2 -= @a[tag=-118-2-a,limit=1] CT1

execute if score #-118 counter_1 matches ..-1 run scoreboard players set #-118 counter_1 0
execute if score #-118 counter_2 matches ..-1 run scoreboard players set #-118 counter_2 0

scoreboard players operation #-118 counter_1 += #-118 counter_2
scoreboard players set #-118 counter_2 1200
scoreboard players operation #-118 counter_2 -= #-118 counter_1

scoreboard players operation @s CT1 = #-118 counter_2
execute as @a[tag=-118-2-a] run scoreboard players set @s CT1 1200



scoreboard players set #-118 counter_1 1200
scoreboard players set #-118 counter_2 1200

scoreboard players operation #-118 counter_1 -= @s CT2
scoreboard players operation #-118 counter_2 -= @a[tag=-118-2-a,limit=1] CT2

execute if score #-118 counter_1 matches ..-1 run scoreboard players set #-118 counter_1 0
execute if score #-118 counter_2 matches ..-1 run scoreboard players set #-118 counter_2 0

scoreboard players operation #-118 counter_1 += #-118 counter_2
scoreboard players set #-118 counter_2 1200
scoreboard players operation #-118 counter_2 -= #-118 counter_1

scoreboard players operation @s CT2 = #-118 counter_2
execute as @a[tag=-118-2-a] run scoreboard players set @s CT2 1200



scoreboard players set #-118 counter_1 1200
scoreboard players set #-118 counter_2 1200

scoreboard players operation #-118 counter_1 -= @s CT3
scoreboard players operation #-118 counter_2 -= @a[tag=-118-2-a,limit=1] CT3

execute if score #-118 counter_1 matches ..-1 run scoreboard players set #-118 counter_1 0
execute if score #-118 counter_2 matches ..-1 run scoreboard players set #-118 counter_2 0

scoreboard players operation #-118 counter_1 += #-118 counter_2
scoreboard players set #-118 counter_2 1200
scoreboard players operation #-118 counter_2 -= #-118 counter_1

scoreboard players operation @s CT3 = #-118 counter_2
execute as @a[tag=-118-2-a] run scoreboard players set @s CT3 1200



execute if entity @s[scores={CT1=..1199}] run tag @s add 118-ct-change
execute if entity @s[scores={CT2=..1199}] run tag @s add 118-ct-change
execute if entity @s[scores={CT3=..1199}] run tag @s add 118-ct-change

execute if entity @s[scores={CT1=..1199},tag=SkillReady1] run tag @s remove SkillReady1
execute if entity @s[scores={CT2=..1199},tag=SkillReady2] run tag @s remove SkillReady2
execute if entity @s[scores={CT3=..1199},tag=SkillReady3] run tag @s remove SkillReady3

execute if entity @s[tag=-118-ct-change,scores={CT1=..1199}] run clear @s compass{CT:1}
execute if entity @s[tag=-118-ct-change,scores={CT2=..1199}] run clear @s compass{CT:2}
execute if entity @s[tag=-118-ct-change,scores={CT3=..1199}] run clear @s compass{CT:3}
execute if entity @s[tag=-118-ct-change] run function project-c:general/cooltimecounter
execute if entity @s[tag=-118-ct-change] run tag @s remove 118-ct-change


execute if entity @a[tag=-118-2-a,limit=1] at @a[tag=-118-2-a] run playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 1.3 2
execute if entity @a[tag=-118-2-a,limit=1] at @a[tag=-118-2-a] run particle minecraft:firework ~ ~1 ~ 0 0 0 0.2 20 force @a

execute if entity @a[tag=-118-2-a,limit=1] as @a[tag=-118-2-a] run tag @s remove -118-2-a
scoreboard players reset #-118

tag @s remove 118-

function project-c:jobaction/118/replaceitem/2

title @s actionbar [{"text":""}]
scoreboard players reset @s counter

tag @s remove SkillReady2
scoreboard players set @s usedSkill 2