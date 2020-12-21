scoreboard players remove @s counter 1
playsound minecraft:block.grass.break master @a ~ ~ ~ 0.5 0

teleport @s[scores={counter=1..}] ^ ^ ^1 ~ ~
teleport @a[scores={jobNumber=50,CT2=..1199},limit=1,sort=nearest] ^ ^ ^ ~ ~
effect give @a[scores={jobNumber=50,CT2=..1199},limit=1,sort=nearest,distance=0..3] resistance 1 5 true
effect give @a[scores={jobNumber=50,CT2=..1199},limit=1,sort=nearest,distance=0..3] levitation 1 0 true
execute unless block ^ ^ ^1 air run kill @s

execute as @s[tag=050-Charge,scores={counter_1=1}] at @s run summon slime ^ ^ ^ {CustomName:"\"チャージドガントレット\"",Size:3,Invulnerable:1,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:999999}],Attributes:[{Name:generic.attackDamage,Base:4}],Tags:["50Slime"]}
execute as @s[tag=050-Charge,scores={counter_1=2}] at @s run summon slime ^ ^ ^ {CustomName:"\"チャージドガントレット\"",Size:3,Invulnerable:1,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:999999}],Attributes:[{Name:generic.attackDamage,Base:8}],Tags:["50Slime"]}
execute as @s[tag=050-Charge,scores={counter_1=3}] at @s run summon slime ^ ^ ^ {CustomName:"\"チャージドガントレット\"",Size:3,Invulnerable:1,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:999999}],Attributes:[{Name:generic.attackDamage,Base:12}],Tags:["50Slime"]}
execute as @s[tag=050-Charge,scores={counter_1=4}] at @s run summon slime ^ ^ ^ {CustomName:"\"チャージドガントレット\"",Size:3,Invulnerable:1,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:999999}],Attributes:[{Name:generic.attackDamage,Base:17}],Tags:["50Slime"]}

teleport @e[tag=50Slime,limit=1,sort=nearest] ^ ^ ^-3.55 ~ ~

data merge block -23 5 -20 {auto:1b}

kill @s[scores={counter=..0}]
particle explosion ~ ~1 ~ 0 0 0 0 1