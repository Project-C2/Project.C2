#判定
#CT
scoreboard players set @s usedSkill 3
scoreboard players set @s CT3 1190
scoreboard players set @s Mana 80
scoreboard players reset @s aviate
#スキル効果
#共通
particle minecraft:explosion ~ ~1 ~ 0 0 0 0 2
playsound minecraft:block.anvil.land master @a ~ ~ ~ 3 1.5
scoreboard players remove @s stockcounter 1

clear @s minecraft:elytra

effect give @s minecraft:levitation 4 0 true

item replace entity @s armor.chest with minecraft:air

execute anchored eyes run summon minecraft:armor_stand ^ ^ ^0.5 {Tags:["094fire","094fireF"],Invisible:1b,NoGravity:1b}

teleport @e[limit=1,sort=nearest,tag=094fire] ^ ^1.5 ^1 ~ ~

kill @e[tag=094dummy]


#リセット
tag @s remove SkillReady3
data merge block 27 2 89 {auto:1b}