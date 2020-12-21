#CT
scoreboard players set @s counter_1 35

tag @s add 055_bullet
#スキル効果
#Red
execute anchored eyes if entity @s[team=Red] run summon armor_stand ^ ^ ^1 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["055-0","055-0R","055-0Summoned"]}
#Blue
execute anchored eyes if entity @s[team=Blue] run summon armor_stand ^ ^ ^1 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["055-0","055-0B","055-0Summoned"]}

#共通
execute at @e[tag=055-0Summoned] rotated as @s run teleport @e[limit=1,sort=nearest,tag=055-0Summoned] ~ ~ ~ ~ ~
data merge block 57 5 -20 {auto:1b}
particle minecraft:explosion ^ ^1 ^1 0 0 0 0 1 force @a
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 1
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 1.45
tag @e[tag=055-0Summoned] remove 055-0Summoned
#リセット
scoreboard players set @s usedSkill
kill @e[type=snowball,limit=1,sort=nearest]