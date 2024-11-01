

line x location= 0    spacing= 0.05 tag= bottom
line x location= 1.0  spacing= 0.05  tag= top

line y location= 0.0      spacing= 0.05  tag= left
line y location= 1   spacing= 0.05      tag= right 

line z location= 0.0      spacing= 0.05  tag= z_bot
line z location= 1   spacing= 0.05      tag= z_top 

region Si xlo= bottom xhi= top ylo= left yhi= right zlo= z_bot zhi= z_top  

init  !DelayFullD
struct tdr= n1 !Gas !interfaces

exit



