#実行者          -> @e[tag=EnderPortalB]
#実行地点        -> 実行者
#実行タイミング　 -> if entity @a[team=Blue,distance=..1]

#飛べるTPがあるかどうか検知
execute as @e[tag=BeaconB] if score @s playerNumber = @e[tag=EnderPortalB,limit=1,sort=nearest] playerNumber run tag @s add canTPBeacon

execute if entity @e[tag=canTPBeacon] as @a[team=Blue,distance=..1] positioned as @s run function project-c:jobaction/006/skill/2/1

tag @e[tag=canTPBeacon] remove canTPBeacon