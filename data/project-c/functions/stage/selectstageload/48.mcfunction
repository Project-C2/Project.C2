summon arrow 0 0 0 {xTile:2000,yTile:0,zTile:500,NoGravity:1b,Tags:["Loader","Stable"]}
data merge block -113 47 -121 {Command:"/function project-c:stage/selectstageclock/48"}
data merge block -123 32 -120 {Command:"/function project-c:stage/selectstagestart/48"}
data merge block -115 20 -118 {Command:"/tp @a[scores={gameNumber=-1}] 2042 82 440 45 20"}
data merge block -115 23 -121 {Command:"/tp @a[tag=!Joined] 2042 82 440 45 20"}