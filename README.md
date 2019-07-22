# Cruise control system
 
## Overviews
This article presents the design process of the cruise controller and briefly analysis the performance of different control approaches including P, PI, and PID. A robust cruise control system is critical not only in automobile fields but also in manufacturing fields and the aerospace industry. Using MATLAB to test the outcome of different control methods can visually and directly validate the feedback control model.
<!--more-->

blog: https://tianchaohuo.github.io/2019/07/22/An-Introduction-of-Cruise-Control-System/

## Objective
Design a cruise controller for a BMW 335i car. The specifications of this vehicle are:

<div align=center><img src = "An-Introduction-of-Cruise-Control-System\specifications.jpg"></div>





## Conclusions
This article mainly discusses the design of a cruise controller, containing linearization for the non-linear model, the introduction of PID control, the designing process of cruise controller. Basically, we start from P control method and analyze the performance. However, there is a steady-state error so that we move to design PI control, which is effective to eliminate the steady-state error. It also mathematically analyzes why we select proportional and integral control method, rather than pure proportional control. Moreover, examinations under several conditions are provided to test the performance of the designed controller, for example, changing target speed to another,  suddenly changing from flat ground to steep uphill slope.  From these examinations, we understand that how the mass influences the response of the controller and why we cannot select a high value of proportional gain.
In conclusion, this article provides an example to design a cruise controller. More discussion you can refer to the report.


## REFERENCES
[1]	Bmw.co.za, 2018. [Online]. Available:
https://app.bmw.co.za/dws/VTS/servlet/VtsPdfUI?modelCode=KG72.  [Accessed: 15- Sep- 2018]. </br>
[2]	G. Shi, 2018. [Online]. Available:
https://wattlecourses.anu.edu.au/pluginfile.php/1816532/mod_resource/content/1/Notes_Wk4.pdf. [Accessed: 16- Sep- 2018].</br>
[3]	K. Aström and R. Murray, An Feedback systems : an introduction for scientists and engineers. Princeton University Press, 2010.</br>
[4]	O. Garpinger et al, "Performance and robustness trade-offs in PID control," Journal of Process Control, vol. 24, (5), pp. 568-577, 2014.
