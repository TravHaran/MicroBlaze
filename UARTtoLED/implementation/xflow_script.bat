@ECHO OFF
@REM ###########################################
@REM # Script file to run the flow 
@REM # 
@REM ###########################################
@REM #
@REM # Command line for ngdbuild
@REM #
ngdbuild -p xc6slx9csg324-2 -nt timestamp -bm uart2led.bmm "C:/Users/TRAV/Desktop/FPGA_Tutorials/UARTtoLED/implementation/uart2led.ngc" -uc uart2led.ucf uart2led.ngd 

@REM #
@REM # Command line for map
@REM #
map -o uart2led_map.ncd -w -pr b -ol high -timing -detail uart2led.ngd uart2led.pcf 

@REM #
@REM # Command line for par
@REM #
par -w -ol high uart2led_map.ncd uart2led.ncd uart2led.pcf 

@REM #
@REM # Command line for post_par_trce
@REM #
trce -e 3 -xml uart2led.twx uart2led.ncd uart2led.pcf 

