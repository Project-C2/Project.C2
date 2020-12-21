scoreboard players set @s CT1 900


playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1
particle minecraft:explosion ~ ~1 ~ 0 0 0 1 1


effect give @s minecraft:slowness 3 2 true
effect give @s minecraft:mining_fatigue 3 2 true

summon minecraft:armor_stand ~ ~ ~ {Tags:[PSCount],Invisible:1}
scoreboard players set @s counter 0

#発動対象がプレイヤーの場合
execute store success score @s counter if entity @s[team=Red] run scoreboard players operation @e[sort=nearest,limit=1,tag=PSCount] playerNumber = @a[team=Blue,distance=..5,limit=1,nbt={HurtTime:10s},tag=Battle] playerNumber
execute store success score @s counter if entity @s[team=Blue] run scoreboard players operation @e[sort=nearest,limit=1,tag=PSCount] playerNumber = @a[team=Red,distance=..5,limit=1,nbt={HurtTime:10s},tag=Battle] playerNumber

#発動対象がプレイヤー以外の場合
execute if entity @s[scores={counter=0}] run scoreboard players set @e[sort=nearest,limit=1,tag=PSCount] playerNumber 0
execute if entity @s[scores={counter=0},team=Red] run tag @e[team=Blue,distance=..5,limit=1,nbt={HurtTime:10s},type=!player,tag=Battle] add PSCountTarget
execute if entity @s[scores={counter=0},team=Blue] run tag @e[team=Red,distance=..5,limit=1,nbt={HurtTime:10s},type=!player,tag=Battle] add PSCountTarget

#ループ処理開始
execute if entity @s[scores={counter=1}] run data merge block -97 2 -122 {auto:1b}
execute if entity @s[scores={counter=0}] run data merge block -97 2 -120 {auto:1b}

scoreboard players reset @s counter


tag @s remove SkillReady1
scoreboard players set @s usedSkill 1