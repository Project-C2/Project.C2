#> project-c:general/random
# data merge storage random: {min:0,max:360}
# random:のstorageにminとmaxを入力して実行する事でその幅内で乱数を生成します

execute if data storage random: min store result score #wnkm_random counter_1 run data get storage random: min 1000
execute if data storage random: max store result score #wnkm_random counter_2 run data get storage random: max 1000

data remove block 0 0 0 Items[]
loot replace block 0 0 0 container.0 loot project-c:wnkm/random

#スコアリセット
scoreboard players reset #wnkm_random

#戻り値
data get block 0 0 0 Items[{Slot:0b}].tag.AttributeModifiers[{Name:"random"}].Amount 0.001