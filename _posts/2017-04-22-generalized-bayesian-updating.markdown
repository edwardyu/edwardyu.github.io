---
layout: post
title:  "Generalized Bayesian Updating"
date:   2017-04-22 00:00:00
categories:
- statistics
---

In Bayesian statistics the fundamental equation comes from Bayes rule, which defines how to update a posterior probability distribution given a likelihood distribution and a prior distribution. 

$$p(\theta | x) \propto p(x | \theta) p(\theta)$$

More generally, we can think about Bayesian inference as using a loss function to update our posterior beliefs. 

$$p(\theta | x) \propto exp\{l(\theta, x)\} p(\theta)$$

Classical Bayesian inference corresponds to using a logarithmic loss function, but what is the "optimal" loss function to use? In many cases, we do not have any prior beliefs about our data so we use a prior $$p(\theta)$$ that gives as little information as possible (using an uniform distribution, for example). In other cases, our prior beliefs are wrong but still have undue influence on the posterior distribution. In such cases we may find that using a different loss function may be optimal. 

One special case that interests me is the so-called "power posterior", where the update rule is:

$$p(\theta | x) \propto p^\eta(x | \theta) p(\theta)$$

where $$\eta$$ is a learning rate. I have a hunch that there may be some structure in the data that allows us to choose a learning rate that performs better than $$\eta = 1$$. I'll update this post if I discover anything interesting. 