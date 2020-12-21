scoreboard players set @s CT3 600


execute if entity @s[team=Red] run tag @a[team=Blue,nbt={HurtTime:10s},distance=..5,sort=nearest,limit=1] add 13MC
execute if entity @s[team=Blue] run tag @a[team=Red,nbt={HurtTime:10s},distance=..5,sort=nearest,limit=1] add 13MC

execute positioned as @a[tag=13MC,sort=nearest,limit=1] run playsound minecraft:entity.wither.death master @a ~ ~ ~ 0.3 2
execute positioned as @a[tag=13MC,sort=nearest,limit=1] run particle dust 255 0 0 1 ~ ~1 ~ 0.5 0.5 0.5 1 100

tag @a[tag=13MC] remove SkillReady1
tag @a[tag=13MC] remove SkillReady2
tag @a[tag=13MC] remove SkillReady3

scoreboard players set @a[tag=13MC,scores={CT1=1201..}] CT1 1200
scoreboard players set @a[tag=13MC,scores={CT2=1201..}] CT2 1200
scoreboard players set @a[tag=13MC,scores={CT3=1201..}] CT3 1200

scoreboard players remove @a[tag=13MC] CT1 60
scoreboard players remove @a[tag=13MC] CT2 60
scoreboard players remove @a[tag=13MC] CT3 60

scoreboard players add @a[tag=13MC] stanTime 40
data merge block -113 2 -122 {auto:1b}

tag @a[tag=13MC] remove 13MC


tag @s remove SkillReady3
scoreboard players set @s usedSkill 3