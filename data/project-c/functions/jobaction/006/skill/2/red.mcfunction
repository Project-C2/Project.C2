#実行者          -> @e[tag=EnderPortalR]
#実行地点        -> 実行者
#実行タイミング　 -> if entity @a[team=Red,distance=..1]

#飛べるTPがあるかどうか検知
execute as @e[tag=BeaconR] if score @s playerNumber = @e[tag=EnderPortalR,limit=1,sort=nearest] playerNumber run tag @s add canTPBeacon

execute if entity @e[tag=canTPBeacon] as @a[team=Red,distance=..1] positioned as @s run function project-c:jobaction/006/skill/2/1

tag @e[tag=canTPBeacon] remove canTPBeacon