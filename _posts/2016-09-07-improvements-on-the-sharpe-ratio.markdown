---
layout: post
title:  "Improvements on the Sharpe Ratio - A Bayesian Approach"
date:   2016-09-07 -0700
categories: finance
---
# Introduction
The Sharpe Ratio is the canonical way of measuring portfolio performance, and is widely used to compare performance of different trading strategies. It gives a number that is proportional to the average return per unit of risk. It is a very convenient way of measuring the reward-risk ratio. It can be calculated with the deceivingly simple formula

$$
S = \frac{\mu_p - \mu_r}{\sigma}
$$

where

$$\mu_p$$ is the average return of the portfolio,

$$\mu_r$$ is the risk free rate, and

$$\sigma$$ is the standard deviation of returns of the portfolio.

# Problems with estimation

$$\mu_r$$ isn't too hard to estimate - we can look at the yield of a 10 year US Treasury bond, for example, and plug that number in. However, there is no way to obtain $$\mu_p$$ and $$\sigma$$ with certainty. The best we can do is use past performance data and estimate these variables.

The obvious point estimators are:

$$\hat{\mu}_p = \frac{1}{T} \sum_t p_t$$ 

(just averaging the returns)

$$\hat{\sigma} = \frac{1}{T - 1} \sum_t (p_t - \hat{\mu}_p)^2$$

This typically doesn't perform too well. "Jobson and Korkie (1981) use 25 years of monthly returns and show that the realized
Sharpe ratios of a portfolio that optimizes on the basis of point estimates of µ, Σ is 0.08,
versus 0.34 for a portfolio using the true quantities." [[1]](http://faculty.chicagobooth.edu/nicholas.polson/research/papers/bayes2.pdf) The two main issues are the following:

1. We are losing a lot of information by using point estimates. Say that our Sharpe ratio estimate is 2.47. OK, but what is our confidence in this belief? It would be much more informative if we obtained an estimate of the form $$S \sim Normal(2.47, 1.5)$$. (Not necessarily normal, but just some distribution.) Then we could account for uncertainty in our prediction.

2. In the finite case, we are essentially assuming a normal distribution for portfolio returns. The problem is that we drastically underestimate extreme events - stock market crashes or currency collapses, for example. Here are some jarring numbers to convince you this is a huge danger. 

Assuming a normal distribution of S&P 500 daily returns, how often do we expect the index to move 8.76% (9 standard deviations)? *Twice in 20000000000000000 years.* In reality, in just under 70 years, this has happened *7 times*. Moral of the story: never assume a normal distribution of returns.

![Normal vs. S&P 500 Returns](/assets/LP-ActualsvsNorm-linear.jpg)

(Plot and figures from [Six Figure Investing](https://sixfigureinvesting.com/2016/03/modeling-stock-market-returns-with-laplace-distribution-instead-of-normal/))

# Bayesian Sharpe Ratio
An interesting idea I'm proposing is to use Bayesian inference to estimate the Sharpe ratio instead. We solve problem #1 by default when we use Bayesian inference, since we will obtain a posterior distribution instead of point estimates. Now we can easily calculate the maximum a posteriori estimate of the Sharpe ratio, or calculate the variance of our estimate, etc. Problem #2 is also rectified in the Bayesian case if we specify heavy-tailed distributions for our priors. 

The downside is that there is no easy way to obtain a closed-form formula for the Sharpe ratio in this case. We will have to rely on computationally expensive Markov Chain Monte Carlo methods. 

# Comparing results on S&P 500 returns
