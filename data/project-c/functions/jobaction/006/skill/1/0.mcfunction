scoreboard players set @s CT1 1000


#飛べるビーコンがあるかどうかを調べる
execute if entity @s[team=Red] as @e[tag=BeaconR] if score @s playerNumber = @a[limit=1,sort=nearest] playerNumber run tag @s add canTPBeacon
execute if entity @s[team=Blue] as @e[tag=BeaconB] if score @s playerNumber = @a[limit=1,sort=nearest] playerNumber run tag @s add canTPBeacon

execute if entity @e[tag=canTPBeacon] run function project-c:jobaction/006/skill/1/1
execute unless entity @e[tag=canTPBeacon] run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 0.5 2

tag @e[tag=canTPBeacon] remove canTPBeacon

tag @s remove SkillReady1
scoreboard players set @s usedSkill 1