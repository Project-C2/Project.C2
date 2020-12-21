#判定
#CT
scoreboard players set @s usedSkill 2
scoreboard players set @s CT2 900


#スキル効果
#共通
playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 1

playsound minecraft:block.anvil.place master @a ~ ~ ~ 1 0.5
playsound minecraft:block.anvil.place master @a ~ ~ ~ 1 0.7

execute if entity @s[team=Red] run execute as @s[team=Red,distance=1..,tag=Battle,gamemode=!spectator] at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"glass"},Data:0,Time:1,DropItem:0,NoGravity:1b,Tags:["1-3-Skill"]}
execute if entity @s[team=Red] run execute as @s[team=Red,distance=1..,tag=Battle,gamemode=!spectator] at @s run summon falling_block ~ ~1 ~ {BlockState:{Name:"glass"},Data:0,Time:1,DropItem:0,NoGravity:1b,Tags:["1-3-Skill"]}

execute if entity @s[team=Blue] run execute as @s[team=Blue,distance=1..,tag=Battle,gamemode=!spectator] at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"glass"},Data:0,Time:1,DropItem:0,NoGravity:1b,Tags:["1-3-Skill"]}
execute if entity @s[team=Blue] run execute as @s[team=Blue,distance=1..,tag=Battle,gamemode=!spectator] at @s run summon falling_block ~ ~1 ~ {BlockState:{Name:"glass"},Data:0,Time:1,DropItem:0,NoGravity:1b,Tags:["1-3-Skill"]}

effect give @s minecraft:instant_damage 1 0 true

execute if entity @s[team=Red] run effect give @a[team=Red,distance=1..,tag=Battle,gamemode=!spectator] minecraft:resistance 3 4 true
execute if entity @s[team=Blue] run effect give @a[team=Blue,distance=1..,tag=Battle,gamemode=!spectator] minecraft:resistance 3 4 true

data merge block -105 2 -122 {auto:1b}

#リセット
tag @s remove SkillReady2