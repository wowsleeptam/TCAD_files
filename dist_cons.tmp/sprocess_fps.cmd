#header

#endheader

line x location= 0    spacing= 0.05 tag= top
line x location= 1.0  spacing= 0.05  tag= bottom

line y location= 0.0      spacing= 0.05  tag= left
line y location= 1   spacing= 0.05      tag= right 

region Silicon xlo= top xhi= bottom ylo= left yhi= right 


init !DelayFullD
struct tdr= n@node@ !Gas !interfaces

exit