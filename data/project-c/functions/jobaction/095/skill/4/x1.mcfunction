function project-c:jobaction/095/skill/4/1
setblock ~ ~ ~ minecraft:stone
execute if entity @a[scores={jobNumber=95,counter_4=1..},limit=1] run setblock ~ ~ ~ minecraft:repeating_command_block[facing=south,conditional=false]{Command:"function project-c:jobaction/095/skill/4/x1",TrackOutput:0b,auto:1b}
