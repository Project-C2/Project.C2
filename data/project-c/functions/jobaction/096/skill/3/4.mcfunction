playsound minecraft:item.armor.equip_netherite master @a ~ ~ ~ 1 1.5

tag @s add 096
execute as @a[scores={jobNumber=96}] if score @s playerNumber = @e[limit=1,sort=nearest,tag=096] playerNumber at @s run playsound minecraft:block.anvil.place master @s ~ ~ ~ 0.4 1.8
execute as @e[tag=096chain,tag=!096chained] if score @s playerNumber = @e[limit=1,sort=nearest,tag=096] playerNumber run tag @s add this
execute as @e[tag=096_3operate] if score @s playerNumber = @e[limit=1,sort=nearest,tag=096] playerNumber run scoreboard players set @s counter 20
tag @s remove 096

execute unless entity @e[tag=this,scores={subcounter=4..},limit=1] run scoreboard players add @e[tag=this] subcounter 16
execute unless entity @e[tag=this,scores={subcounter=12..},limit=1] run scoreboard players add @e[tag=this] subcounter 8
execute unless entity @e[tag=this,scores={subcounter=16..},limit=1] run scoreboard players add @e[tag=this] subcounter 4
execute unless entity @e[tag=this,scores={subcounter=18..},limit=1] run scoreboard players add @e[tag=this] subcounter 2
execute unless entity @e[tag=this,scores={subcounter=20..},limit=1] run scoreboard players add @e[tag=this] subcounter 1
execute unless entity @e[tag=this,scores={subcounter=20..},limit=1] run scoreboard players add @e[tag=this] subcounter 1
scoreboard players set @e[tag=this] counter 31
tag @e[tag=this] add 096chained
tag @e[tag=this] remove this