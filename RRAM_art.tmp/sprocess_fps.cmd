line x location= 0<nm>    spacing= 1<nm> tag= x_start
line x location= 15<nm>  spacing= 1<nm>  tag= x_end

line y location= 0.0<nm>      spacing= 1<nm>   tag= y_start
line y location= 15<nm>   spacing= 1<nm>   tag= y_end
                                                                             
line z location= 0.0<nm>      spacing= 0.1<nm>   tag= z_start
line z location= 3<nm>   spacing= 0.1<nm>   tag= z_end


region HfO2 xlo= x_start xhi= x_end ylo= y_start yhi= y_end zlo= z_start zhi= z_end name= Aboba
init !DelayFullD 
struct tdr= @tdr@
set pi [expr 2.0*asin(1.0)]

select z= "1e20 /(@sigm@*2*$pi)*exp(-1/(2*@sigm@*@sigm@)*((x-@mean@)*(x-@mean@)+(y-@mean@)*(y-@mean@)))" name= conc store
struct tdr= @tdr@_

solution name= potential  add !negative !damp ifpresent = "M"


exit