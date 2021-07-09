tp @a[team=Red] 571 61 518 90 0
tp @a[team=Blue] 482 61 522 -90 0
tp @a[team=] 515 78 532 -90 30
execute as @a at @s run spawnpoint @s
fill 574 59 522 569 64 514 minecraft:red_stained_glass hollow
fill 479 59 519 485 65 525 minecraft:blue_stained_glass hollow
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 530 34 525 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}

function project-c:stage/gimmic/village_repair