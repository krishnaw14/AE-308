# AE-308
Course Project for AE 308: Control Theory

The Project involves designing a suitable controler to satisfy the given problem statement. The problem statement allotted to me is as follows: 

### Problem Statement 

Consider the plant given below.

<a href="https://www.codecogs.com/eqnedit.php?latex=G(s)&space;=&space;\frac{K}{(s&plus;1)(s&plus;2)(s&plus;4)(s&plus;6)}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?G(s)&space;=&space;\frac{K}{(s&plus;1)(s&plus;2)(s&plus;4)(s&plus;6)}" title="G(s) = \frac{K}{(s+1)(s+2)(s+4)(s+6)}" /></a>

Design a suitable controller with root locus, along with gain K, to achieve the closed damping of 0.5 and real
part of non-dominant poles to be at least 10 times the real part of the non-dominant poles, while maintaining
the 2% settling time less than 4 sec. What are compensated phase margin and the bandwidth?

### Solution 

The matlab code, plots and detailed report of the design process has been uploaded. The required specifiactions were achieved by two controllers - one used 4 lag compensators in cascade and other used a lag and a lead compensator in cascade. The first controller achived a better accuracy and response time and but the second controller has a simpler design procedure.
