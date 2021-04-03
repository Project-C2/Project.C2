execute facing ^1 ^ ^ run summon area_effect_cloud ^ ^ ^1 {Tags:["124work","124particleAEC"],Duration:1}
execute facing ^1 ^1 ^ run summon area_effect_cloud ^ ^ ^1 {Tags:["124work","124particleAEC"],Duration:1}
execute facing ^ ^1 ^ run summon area_effect_cloud ^ ^ ^1 {Tags:["124work","124particleAEC"],Duration:1}
execute facing ^-1 ^1 ^ run summon area_effect_cloud ^ ^ ^1 {Tags:["124work","124particleAEC"],Duration:1}
execute facing ^-1 ^ ^ run summon area_effect_cloud ^ ^ ^1 {Tags:["124work","124particleAEC"],Duration:1}
execute facing ^-1 ^-1 ^ run summon area_effect_cloud ^ ^ ^1 {Tags:["124work","124particleAEC"],Duration:1}
execute facing ^ ^-1 ^ run summon area_effect_cloud ^ ^ ^1 {Tags:["124work","124particleAEC"],Duration:1}
execute facing ^1 ^-1 ^ run summon area_effect_cloud ^ ^ ^1 {Tags:["124work","124particleAEC"],Duration:1}

execute facing ^0.3826834324 ^0.9238795325 ^ run summon area_effect_cloud ^ ^ ^1 {Tags:["124work","124particleAEC"],Duration:1}
execute facing ^-0.3826834324 ^0.9238795325 ^ run summon area_effect_cloud ^ ^ ^1 {Tags:["124work","124particleAEC"],Duration:1}
execute facing ^-0.3826834324 ^-0.9238795325 ^ run summon area_effect_cloud ^ ^ ^1 {Tags:["124work","124particleAEC"],Duration:1}
execute facing ^0.3826834324 ^-0.9238795325 ^ run summon area_effect_cloud ^ ^ ^1 {Tags:["124work","124particleAEC"],Duration:1}

execute facing ^0.9238795325 ^0.3826834324 ^ run summon area_effect_cloud ^ ^ ^1 {Tags:["124work","124particleAEC"],Duration:1}
execute facing ^-0.9238795325 ^0.3826834324 ^ run summon area_effect_cloud ^ ^ ^1 {Tags:["124work","124particleAEC"],Duration:1}
execute facing ^-0.9238795325 ^-0.3826834324 ^ run summon area_effect_cloud ^ ^ ^1 {Tags:["124work","124particleAEC"],Duration:1}
execute facing ^0.9238795325 ^-0.3826834324 ^ run summon area_effect_cloud ^ ^ ^1 {Tags:["124work","124particleAEC"],Duration:1}

execute as @e[tag=124particleAEC] facing entity @s feet run tp @s ~ ~ ~ ~ ~
scoreboard players operation @e[tag=124particleAEC] counter_1 = @s counter_1

