scoreboard players add @s counter 1

teleport @a[tag=MakingMagic,distance=..6,limit=1] ~ ~ ~

effect give @a[tag=MakingMagic,distance=..2,limit=1] resistance 1 2
effect give @a[tag=MakingMagic,distance=..2,limit=1] weakness 1 255
effect give @a[tag=MakingMagic,distance=..2,limit=1] slow_falling 1 1

execute if entity @s[scores={counter=2}] run tag @a[tag=MakingMagic,scores={counter_1=..4}] add cannotdarknessoverload
execute if entity @s[scores={counter=2}] run tag @a[tag=MakingMagic,scores={counter_2=..3}] add cannotdarknessoverload
execute if entity @s[scores={counter=2}] run tag @a[tag=MakingMagic,scores={counter_3=..4}] add cannotdarknessoverload
execute if entity @s[scores={counter=2}] run tag @a[tag=MakingMagic,scores={counter_1=5,counter_2=4,counter_3=5}] add candarknessoverload1
execute if entity @s[scores={counter=2}] run tag @a[tag=MakingMagic,scores={counter_1=5,counter_2=5,counter_3=5}] add candarknessoverload2


#
#neutralEthereum‚ÌŠ”‚É‰‚¶‚½ˆ—

execute if entity @s[scores={counter=20}] run execute as @a[tag=MakingMagic,distance=..2,limit=1,scores={counter_1=0}] at @s run function project-c:jobaction/073/general/neutral/neutral0
execute if entity @s[scores={counter=20}] run execute as @a[tag=MakingMagic,distance=..2,limit=1,scores={counter_1=1}] at @s run function project-c:jobaction/073/general/neutral/neutral1
execute if entity @s[scores={counter=20}] run execute as @a[tag=MakingMagic,distance=..2,limit=1,scores={counter_1=2}] at @s run function project-c:jobaction/073/general/neutral/neutral2
execute if entity @s[scores={counter=20}] run execute as @a[tag=MakingMagic,distance=..2,limit=1,scores={counter_1=3}] at @s run function project-c:jobaction/073/general/neutral/neutral3
execute if entity @s[scores={counter=20}] run execute as @a[tag=MakingMagic,distance=..2,limit=1,scores={counter_1=4}] at @s run function project-c:jobaction/073/general/neutral/neutral4
execute if entity @s[scores={counter=20}] run execute as @a[tag=MakingMagic,distance=..2,limit=1,scores={counter_1=5}] at @s run function project-c:jobaction/073/general/neutral/neutral5
#execute if entity @s[scores={counter=20}] run scoreboard players set @a[tag=MakingMagic,distance=..2,limit=1] neutralEthereum 0

execute if entity @s[scores={counter=20}] run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 2

execute if entity @s[scores={counter=20}] run particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 1 100

#
#LightEthereum‚ÌŠ”‚É‰‚¶‚½ˆ—

execute if entity @s[scores={counter=40}] run execute as @a[tag=MakingMagic,distance=..2,limit=1,scores={counter_2=0}] at @s run function project-c:jobaction/073/general/light/light0
execute if entity @s[scores={counter=40}] run execute as @a[tag=MakingMagic,distance=..2,limit=1,scores={counter_2=1}] at @s run function project-c:jobaction/073/general/light/light1
execute if entity @s[scores={counter=40}] run execute as @a[tag=MakingMagic,distance=..2,limit=1,scores={counter_2=2}] at @s run function project-c:jobaction/073/general/light/light2
execute if entity @s[scores={counter=40}] run execute as @a[tag=MakingMagic,distance=..2,limit=1,scores={counter_2=3}] at @s run function project-c:jobaction/073/general/light/light3
execute if entity @s[scores={counter=40}] run execute as @a[tag=MakingMagic,distance=..2,limit=1,scores={counter_2=4}] at @s run function project-c:jobaction/073/general/light/light4
execute if entity @s[scores={counter=40}] run execute as @a[tag=MakingMagic,distance=..2,limit=1,scores={counter_2=5}] at @s run function project-c:jobaction/073/general/light/light5

execute if entity @s[scores={counter=40}] run particle minecraft:end_rod ~ ~1 ~ 0 0 0 1 100

#
#darkEthereum‚ÌŠ”‚É‰‚¶‚½ˆ—

execute if entity @s[scores={counter=60}] run execute as @a[tag=MakingMagic,distance=..2,limit=1,scores={counter_3=0}] at @s run function project-c:jobaction/073/general/dark/dark0
execute if entity @s[scores={counter=60}] run execute as @a[tag=MakingMagic,distance=..2,limit=1,scores={counter_3=1}] at @s run function project-c:jobaction/073/general/dark/dark1
execute if entity @s[scores={counter=60}] run execute as @a[tag=MakingMagic,distance=..2,limit=1,scores={counter_3=2}] at @s run function project-c:jobaction/073/general/dark/dark2
execute if entity @s[scores={counter=60}] run execute as @a[tag=MakingMagic,distance=..2,limit=1,scores={counter_3=3}] at @s run function project-c:jobaction/073/general/dark/dark3
execute if entity @s[scores={counter=60}] run execute as @a[tag=MakingMagic,distance=..2,limit=1,scores={counter_3=4}] at @s run function project-c:jobaction/073/general/dark/dark4
execute if entity @s[scores={counter=60}] run execute as @a[tag=MakingMagic,distance=..2,limit=1,scores={counter_3=5}] at @s run function project-c:jobaction/073/general/dark/dark5
#execute if entity @s[scores={counter=60}] run scoreboard players set @a[tag=MakingMagic,distance=..2,limit=1] darkEthereum 0

execute if entity @s[scores={counter=60}] run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 2

execute if entity @s[scores={counter=60}] run particle minecraft:dragon_breath ~ ~1 ~ 0 0 0 1 100

#

execute if entity @s[scores={counter=80}] run execute as @a[tag=cannotdarknessoverload,limit=1] at @s run function project-c:jobaction/073/general/darknessoverload/darknessoverload0
execute if entity @s[scores={counter=80}] run execute as @a[tag=candarknessoverload1,limit=1] at @s run function project-c:jobaction/073/general/darknessoverload/darknessoverload1
execute if entity @s[scores={counter=80}] run execute as @a[tag=candarknessoverload2,limit=1] at @s run function project-c:jobaction/073/general/darknessoverload/darknessoverload2

execute if entity @s[scores={counter=80}] run tag @a[tag=cannotdarknessoverload] remove cannotdarknessoverload
execute if entity @s[scores={counter=80}] run tag @a[tag=candarknessoverload1] remove candarknessoverload1
execute if entity @s[scores={counter=80}] run tag @a[tag=candarknessoverload2] remove candarknessoverload2

execute if entity @s[scores={counter=80}] run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 3
execute if entity @s[scores={counter=80}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 0.75

execute if entity @s[scores={counter=100}] run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 1 1.25
execute if entity @s[scores={counter=100}] run teleport @e[tag=CraftingAlter] ~ ~-250 ~
execute if entity @s[scores={counter=100}] run kill @e[tag=CraftingAlter]
execute if entity @s[scores={counter=100}] run kill @e[tag=MakingMagicTrace,limit=180]
execute if entity @s[scores={counter=100}] run scoreboard players set @a[tag=MakingMagic,distance=..2,limit=1] subcounter 0
execute if entity @s[scores={counter=100}] run tag @a[tag=MakingMagic,distance=..2,limit=1] remove MakingMagic

execute if entity @s[scores={counter=100}] run particle minecraft:firework ~ ~1 ~ 1 1 1 0 100

execute if entity @s[scores={counter=100..}] run kill @s