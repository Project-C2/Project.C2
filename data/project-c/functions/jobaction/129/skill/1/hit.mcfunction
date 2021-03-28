
effect give @s minecraft:blindness 1 0 true
execute at @s run summon armor_stand ~ ~ ~ {Small:1b,NoBasePlate:1b,Marker:1b,Invisible:1b,Tags:["129-silenth-anchor","this"]}
execute at @s run tp @e[tag=this] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
scoreboard players operation @e[tag=this] stockcounter = #129- stockcounter


#アイテムデータに記述してる増加クールタイムを取得してプレイヤーに渡す
loot replace block 0 0 0 container.0 loot project-c:neac/129/1
execute store result score #129- counter run data get block 0 0 0 Items[{Slot:0b}].tag.add-ct
scoreboard players operation #129- counter *= #20 counter
execute if score @s CT1 matches 1200.. run scoreboard players set @s CT1 1200
execute if score @s CT2 matches 1200.. run scoreboard players set @s CT2 1200
execute if score @s CT3 matches 1200.. run scoreboard players set @s CT3 1200
scoreboard players operation @s CT1 -= #129- counter
scoreboard players operation @s CT2 -= #129- counter
scoreboard players operation @s CT3 -= #129- counter
tag @s remove SkillReady1
tag @s remove SkillReady2
tag @s remove SkillReady3
clear @s compass{CT:1}
clear @s compass{CT:2}
clear @s compass{CT:3}



execute at @s run playsound minecraft:entity.zombie_villager.cure master @s ~ ~ ~ 1 1.4
execute at @s run particle smoke ~ ~1 ~ 0 0 0 0.1 30 force
scoreboard players set @s OutCombat 0
effect clear @s minecraft:regeneration
execute at @s run summon arrow ~ ~2.5 ~ {CustomName:'{"text":"サイレンス","color":"#990000","bold":true}',damage:1.2d,Motion:[0.0,-2.0,0.0],life:1200,Color:-1}


execute as @e[tag=this] run tag @s remove this
