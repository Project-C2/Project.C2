tag @s add 104chance
execute as @a[scores={jobNumber=104}] unless score @s counter_1 matches 1.. if score @s playerNumber = @e[tag=104chance,limit=1,sort=nearest] playerNumber if predicate project-c:wnkm_job/104/half_chance run function project-c:jobaction/104/skill/1/get
tag @s remove 104chance
