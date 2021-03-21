execute as @e[tag=052-EX-6] at @s run tp @s ^ ^ ^1
scoreboard players add @e[tag=052-EX-6] counter_7 1
execute as @e[tag=052-EX-6] at @s run particle minecraft:explosion_emitter ~ ~ ~ 1.5 1.5 1.5 1 1 force
execute as @e[tag=052-EX-6,tag=052-EX-RR] at @s run tag @e[distance=..5,team=Blue] add 052-EX-10
execute as @e[tag=052-EX-6,tag=052-EX-BB] at @s run tag @e[distance=..5,team=Red] add 052-EX-10

#1発目/第一無補正(10~)
execute as @e[tag=052-EX-4,tag=!052-EX-8,scores={counter_8=..0}] at @e[tag=052-EX-10,tag=!052-EX-11] run summon arrow ~ ~2.5 ~ {damage:5.0d,Motion:[0.0,-2.0,0.0],life:1200,Color:-1}
execute as @e[tag=052-EX-4,tag=!052-EX-8,scores={counter_8=1}] at @e[tag=052-EX-10,tag=!052-EX-11] run summon arrow ~ ~2.5 ~ {damage:5.5d,Motion:[0.0,-2.0,0.0],life:1200,Color:-1}
execute as @e[tag=052-EX-4,tag=!052-EX-8,scores={counter_8=2}] at @e[tag=052-EX-10,tag=!052-EX-11] run summon arrow ~ ~2.5 ~ {damage:6.0d,Motion:[0.0,-2.0,0.0],life:1200,Color:-1}
execute as @e[tag=052-EX-4,tag=!052-EX-8,scores={counter_8=3}] at @e[tag=052-EX-10,tag=!052-EX-11] run summon arrow ~ ~2.5 ~ {damage:6.5d,Motion:[0.0,-2.0,0.0],life:1200,Color:-1}
execute as @e[tag=052-EX-4,tag=!052-EX-8,scores={counter_8=4}] at @e[tag=052-EX-10,tag=!052-EX-11] run summon arrow ~ ~2.5 ~ {damage:7.0d,Motion:[0.0,-2.0,0.0],life:1200,Color:-1}
execute as @e[tag=052-EX-4,tag=!052-EX-8,scores={counter_8=5..}] at @e[tag=052-EX-10,tag=!052-EX-11] run summon arrow ~ ~2.5 ~ {damage:7.5d,Motion:[0.0,-2.0,0.0],life:1200,Color:-1}

#1発目/第一補正あり(15~)
execute as @e[tag=052-EX-4,tag=052-EX-8,scores={counter_8=..0}] at @e[tag=052-EX-10,tag=!052-EX-11] run summon arrow ~ ~2.5 ~ {damage:7.5d,Motion:[0.0,-2.0,0.0],life:1200,Color:-1}
execute as @e[tag=052-EX-4,tag=052-EX-8,scores={counter_8=1}] at @e[tag=052-EX-10,tag=!052-EX-11] run summon arrow ~ ~2.5 ~ {damage:8.0d,Motion:[0.0,-2.0,0.0],life:1200,Color:-1}
execute as @e[tag=052-EX-4,tag=052-EX-8,scores={counter_8=2}] at @e[tag=052-EX-10,tag=!052-EX-11] run summon arrow ~ ~2.5 ~ {damage:8.5d,Motion:[0.0,-2.0,0.0],life:1200,Color:-1}
execute as @e[tag=052-EX-4,tag=052-EX-8,scores={counter_8=3}] at @e[tag=052-EX-10,tag=!052-EX-11] run summon arrow ~ ~2.5 ~ {damage:9.0d,Motion:[0.0,-2.0,0.0],life:1200,Color:-1}
execute as @e[tag=052-EX-4,tag=052-EX-8,scores={counter_8=4}] at @e[tag=052-EX-10,tag=!052-EX-11] run summon arrow ~ ~2.5 ~ {damage:9.5d,Motion:[0.0,-2.0,0.0],life:1200,Color:-1}
execute as @e[tag=052-EX-4,tag=052-EX-8,scores={counter_8=5..}] at @e[tag=052-EX-10,tag=!052-EX-11] run summon arrow ~ ~2.5 ~ {damage:10.0d,Motion:[0.0,-2.0,0.0],life:1200,Color:-1}

#2発目/第一無補正(12~)
execute as @e[tag=052-EX-5,tag=!052-EX-8,scores={counter_8=..0}] at @e[tag=052-EX-10,tag=!052-EX-11] run summon arrow ~ ~2.5 ~ {damage:6.0d,Motion:[0.0,-2.0,0.0],life:1200,Color:-1}
execute as @e[tag=052-EX-5,tag=!052-EX-8,scores={counter_8=1}] at @e[tag=052-EX-10,tag=!052-EX-11] run summon arrow ~ ~2.5 ~ {damage:6.5d,Motion:[0.0,-2.0,0.0],life:1200,Color:-1}
execute as @e[tag=052-EX-5,tag=!052-EX-8,scores={counter_8=2}] at @e[tag=052-EX-10,tag=!052-EX-11] run summon arrow ~ ~2.5 ~ {damage:7.0d,Motion:[0.0,-2.0,0.0],life:1200,Color:-1}
execute as @e[tag=052-EX-5,tag=!052-EX-8,scores={counter_8=3}] at @e[tag=052-EX-10,tag=!052-EX-11] run summon arrow ~ ~2.5 ~ {damage:7.5d,Motion:[0.0,-2.0,0.0],life:1200,Color:-1}
execute as @e[tag=052-EX-5,tag=!052-EX-8,scores={counter_8=4}] at @e[tag=052-EX-10,tag=!052-EX-11] run summon arrow ~ ~2.5 ~ {damage:8.0d,Motion:[0.0,-2.0,0.0],life:1200,Color:-1}
execute as @e[tag=052-EX-5,tag=!052-EX-8,scores={counter_8=5..}] at @e[tag=052-EX-10,tag=!052-EX-11] run summon arrow ~ ~2.5 ~ {damage:8.5d,Motion:[0.0,-2.0,0.0],life:1200,Color:-1}

#2発目/第一補正あり(18~)
execute as @e[tag=052-EX-5,tag=052-EX-8,scores={counter_8=..0}] at @e[tag=052-EX-10,tag=!052-EX-11] run summon arrow ~ ~2.5 ~ {damage:9.0d,Motion:[0.0,-2.0,0.0],life:1200,Color:-1}
execute as @e[tag=052-EX-5,tag=052-EX-8,scores={counter_8=1}] at @e[tag=052-EX-10,tag=!052-EX-11] run summon arrow ~ ~2.5 ~ {damage:9.5d,Motion:[0.0,-2.0,0.0],life:1200,Color:-1}
execute as @e[tag=052-EX-5,tag=052-EX-8,scores={counter_8=2}] at @e[tag=052-EX-10,tag=!052-EX-11] run summon arrow ~ ~2.5 ~ {damage:10.0d,Motion:[0.0,-2.0,0.0],life:1200,Color:-1}
execute as @e[tag=052-EX-5,tag=052-EX-8,scores={counter_8=3}] at @e[tag=052-EX-10,tag=!052-EX-11] run summon arrow ~ ~2.5 ~ {damage:10.5d,Motion:[0.0,-2.0,0.0],life:1200,Color:-1}
execute as @e[tag=052-EX-5,tag=052-EX-8,scores={counter_8=4}] at @e[tag=052-EX-10,tag=!052-EX-11] run summon arrow ~ ~2.5 ~ {damage:11.0d,Motion:[0.0,-2.0,0.0],life:1200,Color:-1}
execute as @e[tag=052-EX-5,tag=052-EX-8,scores={counter_8=5..}] at @e[tag=052-EX-10,tag=!052-EX-11] run summon arrow ~ ~2.5 ~ {damage:11.5d,Motion:[0.0,-2.0,0.0],life:1200,Color:-1}

execute as @e[tag=052-EX-6] at @s run tag @e[tag=052-EX-10,tag=!052-EX-11] add 052-EX-11

#リセット
tag @e[tag=052-EX-10] remove 052-EX-10
execute as @e[tag=052-EX-6] at @s run tag @e[distance=6..] remove 052-EX-11
kill @e[tag=052-EX-6,scores={counter_7=50..}]