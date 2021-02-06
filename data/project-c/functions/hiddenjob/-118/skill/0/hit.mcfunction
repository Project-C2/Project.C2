execute if entity @s[scores={counter=1..}] if entity @a[tag=-118-selecting,limit=1] as @a[tag=Battle,tag=-118-anchor2,tag=-118-selecting,dx=0,limit=1,sort=nearest] if score @s playerNumber = @a[tag=Battle,tag=-118-anchor,limit=1] counter run tag @s add -118-selected

execute unless entity @a[tag=-118-selected,limit=1] run function project-c:hiddenjob/-118/skill/0/change

execute if entity @a[tag=-118-selected,limit=1] as @a[tag=-118-selected] run tag @s remove -118-selected