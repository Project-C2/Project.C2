
execute if entity @e[type=villager,sort=nearest,limit=1] as @e[type=villager,sort=nearest,limit=1] run tag @s add hit

tag @s add talkV-anchor

#テスト用村人のやつなので消したかったら消してくれ(?)
execute if entity @e[tag=hit,tag=cclemon,limit=1] as @e[tag=hit,tag=cclemon] run say C C LEMON 夢ならば

execute if entity @e[tag=hit,tag=129-totemV,limit=1] run function project-c:jobaction/129/skill/2/totem/use-check





tag @s remove talkV-anchor

execute if entity @e[type=villager,tag=hit,limit=1] as @e[type=villager,tag=hit] run tag @s remove hit