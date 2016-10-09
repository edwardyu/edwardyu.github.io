---
layout: post
title:  "Medical researcher re-discovers integration in 1994"
date:   2016-10-09 -0700
categories: math
---

I recently came across [this amusing paper](http://care.diabetesjournals.org/content/17/2/152) published in 1994. 

**Title:** A mathematical model for the determination of total area under glucose tolerance and other metabolic curves.

**Abstract:** In Tai's Model, the total area under a curve is computed by dividing the area under the curve between two designated values on the X-axis (abscissas) into small segments (rectangles and triangles) whose areas can be accurately calculated from their respective geometrical formulas. The total sum of these individual areas thus represents the total area under the curve. Validity of the model is established by comparing total areas obtained from this model to these same areas obtained from graphic method (less than +/- 0.4%). Other formulas widely applied by researchers under- or overestimated total area under a metabolic curve by a great margin.

There are so many things wrong with this picture, I don't even know where to begin...

1. Of course, any first-year calculus student will recognize this as simply the trapezoidal rule, which has been known for hundreds of years. 

2. The author named the formula after herself, which makes the situation even more amusing.

3. What do metabolic curves have to do with anything??? Surely the author recognized that "Tai's Model" can used to approximate any integral. It's strange to develop a general mathematical formula only to apply it to one very niche problem and publish it in a nutrition journal. 

4. It has 287 citations according to Google Scholar. Has nobody taken a calculus course?!

5. 
> "The validation of the formula by means of comparison with a 'true value' is useless and contains several fallacies. First, because of the geometrical interpretation of the trapezoidal rule, it is clear that the expression tends towards the true area under the curve (AUC) if the number of considered curve points increases. Hence, the adequacy of the trapezoidal rule is dependent on the number of curve points and cannot be investigated by a few examples. Second, the AUC value measured graphically by counting the numbers of small units under the curve is not the true AUC value. Thus, for comparison, not the true but another approximation was used." 

Ralf Bender, PhD.

6. > "Tai stated that her 'standard (true value)... is obtained by plotting the curve on graph paper and counting number of small units under the curve' (p. 153). By definition, the sum of the areas of the small units, which she erroneously refers to as the 'true value', should be exactly the area found by the trapezoidal rule. The formula should have been 100% accurate because she defined truth to be exactly the sum of the area of the graph paper trapezoids." 

Jane H. Monaco, MS, and Randy L. Anderson, PhD. 

In light of this, I'm proposing Yu's Model - an extension of Tai's model that works for multivariate functions. It works by summing the volumes of hyperrectangles under the curve. 