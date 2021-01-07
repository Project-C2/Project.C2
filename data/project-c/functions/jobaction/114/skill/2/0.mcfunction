scoreboard players set @s CT2 600
scoreboard players set @s counter_1 200

tag @s add 114-StatusStealer
execute if entity @s[team=Red] as @e[team=!Red,distance=..6,limit=1,nbt={HurtTime:10s},tag=Battle] run tag @s add 114-StatusStealTarget
execute if entity @s[team=Blue] as @e[team=!Blue,distance=..6,limit=1,nbt={HurtTime:10s},tag=Battle] run tag @s add 114-StatusStealTarget


execute if entity @e[tag=114-StatusStealTarget,limit=1] as @e[tag=114-StatusStealTarget] at @s run function project-c:jobaction/114/skill/2/1
execute as @e[tag=Ramen] if score @s counter_2 = @a[tag=114-StatusStealer,limit=1] playerNumber run tag @s add MyRamen

scoreboard players operation @e[tag=MyRamen] counter_4 = @s counter_2
scoreboard players set @e[tag=MyRamen] counter 6


execute if entity @e[tag=114-StatusStealTarget,limit=1] as @e[tag=114-StatusStealTarget] run tag @s remove 114-StatusStealTarget
tag @e[tag=MyRamen] remove MyRamen
tag @s remove 114-StatusStealer
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2