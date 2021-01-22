scoreboard players set @s CT1 1000


particle sweep_attack ~ ~1 ~ 1 0.5 1 1 50
playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 1 0.5


#(実行者のteamNumberを仮想プレイヤーに保存)
scoreboard players operation #skillCheck teamNumber = @s teamNumber
execute as @e[distance=..5,tag=Battle] unless score @s teamNumber = #skillCheck teamNumber run scoreboard players set @s stanTime 60
scoreboard players reset #skillCheck teamNumber

#(実行者にタグを付与)
tag @s add zikkousya
execute as @e[distance=..5,tag=Battle] unless score @s teamNumber = @e[tag=zikkousya,limit=1] teamNumber run scoreboard players set @s stanTime 60
tag @s remove zikkousya

#(めんどくせぇ！ってなった時)
execute as @e[distance=..5,tag=Battle] unless score @s teamNumber = @a[limit=1,sort=nearest,gamemode=!spectator] teamNumber run scoreboard players set @s stanTime 60

data merge block -113 2 -122 {auto:1b}


tag @s remove SkillReady1
scoreboard players set @s usedSkill 1