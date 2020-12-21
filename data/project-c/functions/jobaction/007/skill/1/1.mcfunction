execute if entity @e[tag=FECharge2] as @e[tag=FECharge2] positioned as @s run function project-c:jobaction/007/skill/1/2

scoreboard players add @e[tag=FECharge2Stand] counter 1

execute if entity @e[tag=FECharge2Stand,scores={counter=2..}] as @e[tag=FECharge2Stand,scores={counter=2..}] run function project-c:jobaction/007/skill/1/3