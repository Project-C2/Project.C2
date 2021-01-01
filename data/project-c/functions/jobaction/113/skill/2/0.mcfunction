scoreboard players set @s CT2 1000

particle end_rod ~ ~1 ~ 0 0 0 0.8 50
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 2 1
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 2 2
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 2 0.5


summon minecraft:armor_stand ~ ~ ~ {Tags:[judgementCount],Invisible:1}
scoreboard players set @s counter 0

#発動対象がプレイヤーの場合
execute store success score @s counter if entity @s[team=Red] run scoreboard players operation @e[sort=nearest,limit=1,tag=judgementCount] playerNumber = @a[team=Blue,distance=..5,limit=1,nbt={HurtTime:10s},tag=Battle] playerNumber
execute store success score @s counter if entity @s[team=Blue] run scoreboard players operation @e[sort=nearest,limit=1,tag=judgementCount] playerNumber = @a[team=Red,distance=..5,limit=1,nbt={HurtTime:10s},tag=Battle] playerNumber

#発動対象がプレイヤー以外の場合
execute if entity @s[scores={counter=0}] run scoreboard players set @e[sort=nearest,limit=1,tag=judgementCount] playerNumber 0
execute if entity @s[scores={counter=0},team=Red] run tag @e[team=Blue,distance=..5,limit=1,nbt={HurtTime:10s},type=!player,tag=Battle] add judgementCountTarget
execute if entity @s[scores={counter=0},team=Blue] run tag @e[team=Red,distance=..5,limit=1,nbt={HurtTime:10s},type=!player,tag=Battle] add judgementCountTarget

#ループ処理開始
execute if entity @s[scores={counter=1}] run data merge block -107 2 -122 {auto:1b}
execute if entity @s[scores={counter=0}] run data merge block -107 2 -120 {auto:1b}

scoreboard players reset @s counter

tag @s remove SkillReady2
scoreboard players set @s usedSkill 2