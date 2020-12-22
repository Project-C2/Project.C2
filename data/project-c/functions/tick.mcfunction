function project-c:general/cooltimecounter
execute unless entity @a[scores={Delay1=1..1300},limit=1] unless entity @a[scores={Delay2=1..1300},limit=1] unless entity @a[scores={Delay3=1..1300},limit=1] run scoreboard players set #delayoperation counter 1
execute unless score #delayoperation counter matches 1 run function project-c:general/delaycounter
scoreboard players set #delayoperation counter 0
#幸運持ったエンティティいる時にやるfunction
execute if entity @e[nbt={ActiveEffects:[{Id:26b}]},limit=1] run function project-c:general/0-luckeffection
#unluckでCT遅延
scoreboard players remove @a[nbt={ActiveEffects:[{Id:27b}]}] CT1 1
scoreboard players remove @a[nbt={ActiveEffects:[{Id:27b}]}] CT2 1
scoreboard players remove @a[nbt={ActiveEffects:[{Id:27b}]}] CT3 1
#レリック
function project-c:general/relic/reliceffect
#function project-c:radiochat/general/inventorywatcher

scoreboard players add #Clock counter 1
execute if score #Clock counter matches 2.. run scoreboard players set #Clock counter 0

execute if entity @e[tag=088-respawn,limit=1] as @e[tag=088-respawn] at @s run function project-c:jobaction/088/respawn
execute if entity @e[tag=088-1-position,limit=1] as @e[tag=088-1-position] at @s unless entity @e[scores={jobNumber=88},distance=..0.5] if entity @a[scores={jobNumber=88},distance=..0.5,tag=!088-S3-used] run function project-c:jobaction/088/death

#dummyPKの処理
#tag @e[tag=dummyPig] add dummyPK {OnGround:1b}
execute if entity @e[tag=dummyPK,limit=1] run tp @e[tag=dummyPK] ~ ~-50 ~
execute if entity @e[tag=dummyPig,limit=1] run effect give @e[tag=dummyPig] minecraft:invisibility 1000000 0 true