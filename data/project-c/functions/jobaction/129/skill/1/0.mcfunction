scoreboard players set @s CT1 1200
execute store result score #129-- counter run data get entity @s SelectedItem.tag.cooltime
scoreboard players operation #129-- counter *= #20 counter
scoreboard players operation @s CT1 -= #129-- counter


playsound minecraft:entity.ghast.warn master @s ~ ~ ~ 0.3 1.7
playsound minecraft:block.piston.contract master @s ~ ~ ~ 1 0.7
particle minecraft:smoke ~ ~1 ~ 0 0 0 0.5 20 force @a

execute anchored eyes positioned ^ ^ ^ run summon item ~ ~ ~ {Owner:[I;0,0,0,0],Tags:["isItem","129-silenth","this"],Item:{id:"minecraft:gilded_blackstone",Count:1b},NoGravity:1b}


tag @s add 129-anchor

execute store result score #129-- counter run data get entity @s SelectedItem.tag.e-time
scoreboard players operation #129-- counter *= #20 counter
scoreboard players operation @e[tag=this] counter = #129-- counter
execute positioned 0.0 0.0 0.0 run summon armor_stand ^ ^ ^1.2 {Tags:["129-vector"],NoGravity:1b,Marker:1b,Invisible:1b}
execute as @e[tag=this] run data modify entity @s Motion set from entity @e[tag=129-vector,limit=1] Pos
kill @e[tag=129-vector]

tag @s remove 129-anchor

tag @e[tag=this] remove this
scoreboard players reset #129--


data merge block -88 61 -11 {auto:1b}

tag @s remove SkillReady1
scoreboard players set @s usedSkill 1