---
layout: post
title:  "The Unreasonable Effectiveness of Linear Regression"
date:   2016-12-08 17:37:02 -0700
categories: statistics
---

The hype around machine learning and deep learning has exploded these last few years. Every company wants to do "machine learning" now, often with a poor understanding of what that actually entails. [Robin Hanson's stance:](https://twitter.com/robinhanson/status/803302419249725440)

> Good CS expert says: Most firms that think they want advanced AI/ML really just need linear regression on cleaned-up data.

So I thought it might be good to go back to the basics and revisit the most crucial tool in any data scientist's toolbox: linear regression. I didn't appreciate the true power of linear models until taking [Arian Maleki's excellent course](https://sites.google.com/site/introlinearregression/) this past semester. 

Linear regression is uncannily accurate for a wide variety of prediction problems, but perhaps more importantly, it produces models that are *explainable*. We understand why the model is outputting the prediction, unlike some deep learning models where we have to place a lot of blind faith in the algorithm. Ultimately, our goal is to make useful predictions, and we shouldn't care if the underlying model is in vogue or not. 

# Linear Regression is Machine Learning
With that being said, I want to clear up a common misconception which causes aversion towards linear models. In general, machine learning algorithms seek to take in some data $$x$$, and complete a task $$y$$. That is precisely what a linear regression model is - we take in predictors $$x$$, and we produce a prediction $$y$$. *Linear regression is machine learning*, and the separation in the media is really more of a branding difference than a mathematical one. In fact, many machine learning algorithms use prediction methods very similar to linear regression under the hood anyways. Granted, these algorithms are generally more complicated, but in many applications, the complexity doesn't increase accuracy. 

Interestingly, the entire field of statistics has the same branding problem, in that it doesn't sound as "cool" as machine learning. Ask a statistician what the difference between statistics and machine learning is, and [you'll get the pithy reply](https://normaldeviate.wordpress.com/2012/06/12/statistics-versus-machine-learning-5-2/)

> The short answer is: None. They are both concerned with the same question: how do we learn from data?

Linear regression is also a misnomer in the sense that linear regression models can handle non-linear data just fine. We don't have to regress $$y$$ against $$x$$ for instance, we can regress $$y$$ against $$x^2$$, $$\log(x)$$, $$\sin(x)$$, or any arbitrarily complicated function. Linear regression models are used in all sorts of applications where the relationship between prediction and predictor is non-linear. 

Just to give a few examples of linear regression in practice:

- Looking for which genes cause cancer.
- Predicting the health of the ecnonomy.
- Pretty much any scientific result that claims "A causes B".

# We know why and when it works

The beauty of linear regression is that we have a very good understanding of when such an approach will work. I invite you to [take a look at the slides](https://895fdb78-a-62cb3a1a-s-sites.googlegroups.com/site/introlinearregression/Lecture10.pdf?attachauth=ANoY7coLdX1Bty9n8e6xLcsLZsHkd-IhUC6UvW_gJZdGLY_1W45Iaiwx8Lb5QQbHqTxJ7yxvWb1VgjF6cqCeBv3-pGpZbJFdGjtbcnqXPsL7BbNXAVjV6JR8lnM3uKKvUehUgj_ltIEPVADYiUR-61tI8dUb3ZdpqYz47MKQbFgpgQVl0iXIjaeO11_5rNcVhWDyMNT7Y98K2RDQ-GIDnUcnD0dR09nxUzgjTQyRLnbT027BLf3yfEQ%3D&attredirects=0) where Arian Maleki goes through how to use linear regression in practice. In this case study, we examined how to predict the price of a house given a great many details about its location, amenities, size, etc. Running a linear regression model in R gives the following output:

![R output](/assets/r.png)

Not only do the regression coefficients tell us the relationship between the predictor and the response variables, but also included are error estimates. We can say, for example, that the true coefficient lies between this value and that value with 95% confidence. If the results are not statistically significant then we can start exploring more complicated machine learning models. It's incredibly powerful to know how much to trust the model, and let's everyone sleep better at night.

Another nifty consquence of linear regression is that the bias-variance tradeoff is well understood. There are many techniques available to prevent overfitting, and these techniques are generally more robust in the linear case. For example, deep learning models are incredibly prone to overfitting data, and [this can happen even when cross validation is used](http://www.andrewng.org/portfolio/preventing-overfitting-of-cross-validation-data/). As such, many complicated methods have been invented to prevent overfitting for deep learning models, but then it becomes tricky to navigate when to use which technique, hence the high demand for machine learning experts. Preventing overfitting in linear regression, on the other hand, is easier to perform and has less pitfalls. 

# No black box model selection
In high dimensional datasets, it's tempting to throw all of it into a deep learning model and watch it spit out predictions, sometimes with atonishing accuracy. But why did the model make the prediction that it did? The answer, in many cases, is that we haven't got a damn clue. Deep learning is black magic. Of course it's supremely powerful, but we should be wary.

The strategy for a linear model is to carefully select a certain subset of predictors. Techniques like LASSO will find the most revealing predictors to use. The important difference is that if we manually choose the predictors, then we understand the output of the model. 

I'll give an example of a research problem I'm currently involved in. The goal is to predict which combinations of drugs a patient should take for the optimal outcome. A linear model will tell us which cells are correlated with which drugs, and a doctor can interpret it as cell-specific sensitivity to different anti-cancer drugs. A deep learning model would make a black box prediction of the recommended prescription, with no insight as to why. That's a little bit terrifying, and certainly not recommended.