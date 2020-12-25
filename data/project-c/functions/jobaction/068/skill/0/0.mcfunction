#判定
#CT
scoreboard players set @s counter_1 50

#スキル効果
#共通

summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["068-be"],NoGravity:1b,Marker:1b}
teleport @e[tag=068-be,limit=1,sort=nearest] ^ ^1 ^1.5 ~ ~

kill @e[limit=1,sort=nearest,type=snowball]

playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 1

#リセット
execute as @e[tag=068-be] at @s run function project-c:jobaction/068/skill/0/1