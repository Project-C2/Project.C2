execute if entity @s[team=Red,scores={jobNumber=39}] anchored eyes positioned ^ ^ ^1 run effect give @e[team=!Red,tag=Battle,nbt=!{HurtTime:0s},distance=..5,sort=nearest,limit=1] slowness 4 0
execute if entity @s[team=Blue,scores={jobNumber=39}] anchored eyes positioned ^ ^ ^1 run effect give @e[team=!Blue,tag=Battle,nbt=!{HurtTime:0s},distance=..5,sort=nearest,limit=1] slowness 4 0
advancement revoke @s only project-c:wanco_job/039/melee
