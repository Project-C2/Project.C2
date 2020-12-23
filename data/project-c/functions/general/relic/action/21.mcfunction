execute if entity @s[scores={relicCount=..19},team=Red] if entity @a[limit=1,tag=Battle,distance=..12,gamemode=!spectator,team=Blue,nbt={HurtTime:9s}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 2
execute if entity @s[scores={relicCount=..19},team=Red] if entity @a[limit=1,tag=Battle,distance=..12,gamemode=!spectator,team=Blue,nbt={HurtTime:9s}] run scoreboard players add @s relicCount 1
execute if entity @s[scores={relicCount=..20},team=Red] if entity @a[limit=1,tag=Battle,distance=..12,gamemode=!spectator,team=Blue,nbt={HurtTime:10s}] run function project-c:general/relic/clocodire
execute if entity @s[scores={relicCount=..19},team=Blue] if entity @a[limit=1,tag=Battle,distance=..12,gamemode=!spectator,team=Red,nbt={HurtTime:9s}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 2
execute if entity @s[scores={relicCount=..19},team=Blue] if entity @a[limit=1,tag=Battle,distance=..12,gamemode=!spectator,team=Red,nbt={HurtTime:9s}] run scoreboard players add @s relicCount 1
execute if entity @s[scores={relicCount=..20},team=Blue] if entity @a[limit=1,tag=Battle,distance=..12,gamemode=!spectator,team=Red,nbt={HurtTime:10s}] run function project-c:general/relic/clocodire

