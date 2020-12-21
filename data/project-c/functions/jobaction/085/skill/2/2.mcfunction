teleport @a[scores={jobNumber=85},tag=Battle,tag=85swap,limit=1] @e[tag=85swaptarget,limit=1]
scoreboard players set @a[scores={jobNumber=85},tag=Battle,tag=85swap,limit=1] CT2 900

scoreboard players set @s counter 60

playsound minecraft:block.portal.trigger master @a ~ ~ ~ 2 1

teleport @e[tag=85swaptarget,limit=1] @e[tag=085-swaprecall,limit=1,sort=nearest]

tag @e[tag=85swaptarget] remove 85swaptarget

tag @a[scores={jobNumber=85},tag=Battle,tag=85swap,limit=1] remove 85swap