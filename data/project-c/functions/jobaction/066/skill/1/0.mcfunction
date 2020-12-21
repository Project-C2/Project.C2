#判定
#CT
scoreboard players set @s Mana 1

#スキル効果
#共通
summon armor_stand ~ ~1 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["066-Banish","066-hassummoned"]}
scoreboard players operation @e[limit=1,sort=nearest,tag=066-hassummoned] playerNumber = @s playerNumber
tag @e[tag=066-hassummoned] remove 066-hassummoned

playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 1
playsound minecraft:block.portal.trigger master @a ~ ~ ~ 2 1
effect give @s slowness 100000 3 true

#リセット
tag @s remove SkillReady1
data merge block -61 2 31 {auto:1b}