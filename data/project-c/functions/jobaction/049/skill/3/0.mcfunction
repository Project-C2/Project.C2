scoreboard players set @s CT3 -600

playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 1 0
particle minecraft:explosion ^ ^1 ^1 3 3 3 1 30 force
particle minecraft:end_rod ^ ^ ^ 0 0 0 1 100 force
execute if entity @a[gamemode=!spectator,distance=..10,limit=1] as @a[gamemode=!spectator,distance=..10] run tag @s add hit
data merge storage wnkm_check_hit: {option:1b,including_myself:1b}
function project-c:general/teamcheck
scoreboard players add @a[tag=hit] 49Raiko 300
tag @a[tag=hit] remove hit

data merge block -33 2 -20 {auto:1b}
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3