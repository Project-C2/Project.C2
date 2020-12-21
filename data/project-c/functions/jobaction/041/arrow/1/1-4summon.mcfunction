summon parrot ^2 ^ ^ {Tags:["041-cardinal-b","041-first","Battle"],Variant:0,NoAI:1b,Silent:1b,DeathTime:19s,Health:0.01f,Attributes:[{Name:"generic.maxHealth",Base:0.01d}]}
summon parrot ^-2 ^ ^ {Tags:["041-cardinal-b","041-first","Battle"],Variant:0,NoAI:1b,Silent:1b,DeathTime:19s,Health:0.01f,Attributes:[{Name:"generic.maxHealth",Base:0.01d}]}
summon parrot ^ ^2 ^ {Tags:["041-cardinal-b","041-first","Battle"],Variant:0,NoAI:1b,Silent:1b,DeathTime:19s,Health:0.01f,Attributes:[{Name:"generic.maxHealth",Base:0.01d}]}
summon parrot ^ ^-2 ^ {Tags:["041-cardinal-b","041-first","Battle"],Variant:0,NoAI:1b,Silent:1b,DeathTime:19s,Health:0.01f,Attributes:[{Name:"generic.maxHealth",Base:0.01d}]}
summon parrot ^1.414 ^1.414 ^ {Tags:["041-cardinal-b","041-first","Battle"],Variant:0,NoAI:1b,Silent:1b,DeathTime:19s,Health:0.01f,Attributes:[{Name:"generic.maxHealth",Base:0.01d}]}
summon parrot ^-1.414 ^1.414 ^ {Tags:["041-cardinal-b","041-first","Battle"],Variant:0,NoAI:1b,Silent:1b,DeathTime:19s,Health:0.01f,Attributes:[{Name:"generic.maxHealth",Base:0.01d}]}
summon parrot ^-1.414 ^-1.414 ^ {Tags:["041-cardinal-b","041-first","Battle"],Variant:0,NoAI:1b,Silent:1b,DeathTime:19s,Health:0.01f,Attributes:[{Name:"generic.maxHealth",Base:0.01d}]}
summon parrot ^1.414 ^-1.414 ^ {Tags:["041-cardinal-b","041-first","Battle"],Variant:0,NoAI:1b,Silent:1b,DeathTime:19s,Health:0.01f,Attributes:[{Name:"generic.maxHealth",Base:0.01d}]}
execute as @e[tag=041-first] at @s facing entity @e[tag=041-cardinal-p] feet run tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=041-red] run team join Red @e[tag=041-first]
execute if entity @s[tag=041-blue] run team join Blue @e[tag=041-first]
tag @e[tag=041-first] remove 041-first
data merge block 119 5 -69 {auto:1b}