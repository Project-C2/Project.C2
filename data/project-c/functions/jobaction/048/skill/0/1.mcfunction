execute if entity @s[scores={counter_2=0}] run summon marker ^ ^ ^ {Tags:["048-Bullet","048-Bullet1","048-BulletSummon","Projectile"]}
execute if entity @s[scores={counter_2=0}] run teleport @e[limit=1,sort=nearest,tag=048-BulletSummon] ^ ^1.5 ^1 ~ ~

execute if entity @s[scores={counter_2=1}] run summon marker ^ ^ ^ {Tags:["048-Bullet","048-Bullet2","048-Bullet21","048-BulletSummon","Projectile"]}
execute if entity @s[scores={counter_2=1}] run summon marker ^ ^ ^ {Tags:["048-Bullet","048-Bullet2","048-Bullet22","048-BulletSummon","Projectile"]}
execute if entity @s[scores={counter_2=1}] run summon marker ^ ^ ^ {Tags:["048-Bullet","048-Bullet2","048-Bullet23","048-BulletSummon","Projectile"]}

execute if entity @s[scores={counter_2=1}] run teleport @e[limit=1,sort=nearest,tag=048-BulletSummon,tag=048-Bullet21] ^-3.5 ^1.5 ^ ~ ~
execute if entity @s[scores={counter_2=1}] run teleport @e[limit=1,sort=nearest,tag=048-BulletSummon,tag=048-Bullet22] ^ ^1.5 ^1 ~ ~
execute if entity @s[scores={counter_2=1}] run teleport @e[limit=1,sort=nearest,tag=048-BulletSummon,tag=048-Bullet23] ^3.5 ^1.5 ^ ~ ~


execute if entity @s[scores={counter_2=2}] run summon marker ^ ^ ^ {Tags:["048-Bullet","048-Bullet3","048-Bullet31","048-BulletSummon","Projectile"]}
execute if entity @s[scores={counter_2=2}] run summon marker ^ ^ ^ {Tags:["048-Bullet","048-Bullet3","048-Bullet32","048-BulletSummon","Projectile"]}
execute if entity @s[scores={counter_2=2}] run summon marker ^ ^ ^ {Tags:["048-Bullet","048-Bullet3","048-Bullet33","048-BulletSummon","Projectile"]}
execute if entity @s[scores={counter_2=2}] run summon marker ^ ^ ^ {Tags:["048-Bullet","048-Bullet3","048-Bullet34","048-BulletSummon","Projectile"]}
execute if entity @s[scores={counter_2=2}] run summon marker ^ ^ ^ {Tags:["048-Bullet","048-Bullet3","048-Bullet35","048-BulletSummon","Projectile"]}
execute if entity @s[scores={counter_2=2}] run summon marker ^ ^ ^ {Tags:["048-Bullet","048-Bullet3","048-Bullet36","048-BulletSummon","Projectile"]}

execute if entity @s[scores={counter_2=2}] rotated ~0 -1.1 run teleport @e[limit=1,sort=nearest,tag=048-BulletSummon,tag=048-Bullet31] ^ ^1.5 ^1 ~ 0
execute if entity @s[scores={counter_2=2}] rotated ~60 -1.1 run teleport @e[limit=1,sort=nearest,tag=048-BulletSummon,tag=048-Bullet32] ^ ^1.5 ^1 ~ 0
execute if entity @s[scores={counter_2=2}] rotated ~120 -1.1 run teleport @e[limit=1,sort=nearest,tag=048-BulletSummon,tag=048-Bullet33] ^ ^1.5 ^1 ~ 0
execute if entity @s[scores={counter_2=2}] rotated ~180 -1.1 run teleport @e[limit=1,sort=nearest,tag=048-BulletSummon,tag=048-Bullet34] ^ ^1.5 ^1 ~ 0
execute if entity @s[scores={counter_2=2}] rotated ~240 -1.1 run teleport @e[limit=1,sort=nearest,tag=048-BulletSummon,tag=048-Bullet35] ^ ^1.5 ^1 ~ 0
execute if entity @s[scores={counter_2=2}] rotated ~300 -1.1 run teleport @e[limit=1,sort=nearest,tag=048-BulletSummon,tag=048-Bullet36] ^ ^1.5 ^1 ~ 0

scoreboard players operation @e[tag=048-BulletSummon] playerNumber = @s playerNumber

scoreboard players operation #skillCheck teamNumber = @s teamNumber
scoreboard players operation @e[tag=048-BulletSummon] teamNumber = #skillCheck teamNumber
scoreboard players reset #skillCheck teamNumber

execute if entity @s[scores={counter_2=0}] run scoreboard players set @e[tag=048-BulletSummon] counter 20
execute if entity @s[scores={counter_2=1}] run scoreboard players set @e[tag=048-BulletSummon] counter 20
execute if entity @s[scores={counter_2=2}] run scoreboard players set @e[tag=048-BulletSummon] counter 7

execute if entity @s[scores={counter_1=0}] run scoreboard players set @e[tag=048-BulletSummon] counter_1 0
execute if entity @s[scores={counter_1=1}] run scoreboard players set @e[tag=048-BulletSummon] counter_1 1
execute if entity @s[scores={counter_1=2}] run scoreboard players set @e[tag=048-BulletSummon] counter_1 2
execute if entity @s[scores={counter_1=3}] run scoreboard players set @e[tag=048-BulletSummon] counter_1 3
execute if entity @s[scores={counter_1=4}] run scoreboard players set @e[tag=048-BulletSummon] counter_1 4
execute if entity @s[scores={counter_1=5}] run scoreboard players set @e[tag=048-BulletSummon] counter_1 5

execute if entity @s[scores={counter_2=0}] run scoreboard players set @e[tag=048-BulletSummon] counter_2 0
execute if entity @s[scores={counter_2=1}] run scoreboard players set @e[tag=048-BulletSummon] counter_2 1
execute if entity @s[scores={counter_2=2}] run scoreboard players set @e[tag=048-BulletSummon] counter_2 2

tag @e[tag=048-BulletSummon] remove 048-BulletSummon