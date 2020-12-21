#CT
scoreboard players set @s CT3 0

playsound minecraft:block.anvil.place master @a ~ ~ ~ 1 0.5
playsound minecraft:block.anvil.place master @a ~ ~ ~ 1 0.7

summon falling_block ~ ~ ~ {BlockState:{Name:"glass"},Data:0,Time:1,DropItem:0,NoGravity:1b,Tags:["1-3-Skill"]}
summon falling_block ~ ~1 ~ {BlockState:{Name:"glass"},Data:0,Time:1,DropItem:0,NoGravity:1b,Tags:["1-3-Skill"]}

data merge block -105 2 -122 {auto:1b}

particle minecraft:totem_of_undying ~ ~1.3 ~ 0 0 0 1 200 
particle spit ~ ~1 ~ 0 0 0 1 130 

playsound minecraft:item.totem.use master @a ~ ~ ~ 3 0
playsound minecraft:item.totem.use master @a ~ ~ ~ 3 0.5
effect give @s minecraft:resistance 5 4 true

effect clear @s poison
effect clear @s minecraft:hunger
effect clear @s minecraft:slowness
effect clear @s minecraft:slow_falling
effect clear @s minecraft:weakness
effect clear @s minecraft:wither
effect clear @s minecraft:levitation
effect clear @s minecraft:glowing
effect clear @s mining_fatigue

#スキル効果
#共通

#リセット
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3