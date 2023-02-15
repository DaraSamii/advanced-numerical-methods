# advanced-numerical-methods
contain project of solving a nonlinear PDE with methods of line, Explcit method and PSOR.


# Repository Tree
.

**document.pdf** : persian report of the complete methods and the discussion

**Explicit.ipynb** : contain ipython notebook of explicit method solving process

**intitled2.m** : contain the Method of line programm

**PSOR.ipynb** : contain the PSOR ipython notebook program and the analysis of different relaxation factor effects

**img** : contain plots, contours of the reuslts obtain from the solving methods

# Problem

```math
\frac{\partial u}{\partial t} = \frac{ \partial }{\partial x}(u \frac{\partial u}{\partial x})
```

the extended version:
```math
	\frac{\partial u}{\partial t} = \frac{ \partial }{\partial x}(u \frac{\partial u}{\partial x}) = \frac{\partial u}{\partial x}.\frac{\partial u}{\partial x} + u. \frac{\partial^2 u}{\partial x^2} 
  ```
  
  ## boundary condtions
  ```math
  BC :\begin{cases}
	u(0,t) = 1\\
	u(1,t) = 2
\end{cases}
  ```
  
 ## Initial Condition
 ```math
 IC : u(x,0) = 0
 ```

# Results
the same result was achieved by all three methods

![cntour](https://github.com/DaraSamii/advanced-numerical-methods/blob/main/imgs/cont_readme.png)
![times](https://github.com/DaraSamii/advanced-numerical-methods/blob/main/imgs/times_readme.png)
