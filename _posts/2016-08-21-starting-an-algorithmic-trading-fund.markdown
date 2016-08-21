---
layout: post
title:  "Starting an Algorithmic Trading Fund"
date:   2016-08-21 -0300
categories: 
---

Sometime around March 2016, a friend approached me with the idea of doing some algorithmic trading with our own money. An initial team of 5 was assembled, and this post details the beginning of that journey. 

# Motivations  
If I can be brutally honest, this whole endeavor is the hubris of the young. We were intensely skeptical of the way quants were portrayed in the media. Apparently, you needed the intelligence of Aristotle and Einstein combined to even think about algorithmic trading. In *My Life as a Quant*, Emanuel Derman spent years as a theoretical physicist before transitioning to Wall Street. It seems to say: if you don't have these credentials you will be eaten alive by those who do. 

We didn't believe any of it. Second, we probably had more than a healthy dose of optimism in artificial intelligence. I remember long talks with [Carlos](http://carlosgmartin.com) and [Lucas](http://lucasschuermann.com/) about the ability of machine learning algorithms to synthesize patterns that humans would have no chance of recognizing. 

So we set off, confident that our strategies would work. 

# Strategies
Our trading strategies focus on two major areas: machine learning and statistical arbitrage. 

Machine learning is the first thing that any newcomer would think of when trying to create a trading strategy. Just plug a vector of past prices into a neural network and let it predict the future price! There's actually a lot of research coming from computer science departments in this vein. Suffice it to say that such a hopelessly naive strategy will never make money in real markets. Having the right inputs into the machine learning algorithm is half the battle. And these inputs are becoming increasingly more esoteric - I've heard of firms using satellite images of parking lots to predict customer density of shopping centers. 

When I first started, I had fanciful notions of creating new kernels for SVMs or something. The mathematical breakthrough would allow unbelievably high accuracy in classification and forecasting. How wrong I was! Instead, I spend most of my time optimizing machine learning algorithms. Avoiding overfitting is probably the biggest issue. Another one of the main problems is that computers are sooooo slow. Even with parallelization and a large number of cores, the computational time required to parse some of the larger data streams is enormous. 

Our statistical arbitrage research involves finding mismatches in derivatives pricing. This of course is a deep rabbit hole...we touch all sorts of volatility and pricing models and try to glean insight into which models are useful and which are just academic fantasies (the vast majority fall into the latter). It did, however, lead me to a very interesting branch of finance called econophysics - i.e., applying physics equations to economics. One quant wrote that every beginning quant with a physics background wants to apply quantum mechanics to finance. Very rarely are they successful. 

# Lessons learned so far

#### Never trust the normal distribution 

![Normal distribution](/assets/normal.jpg)

I love the normal distribution, I really do. It's so intuitive and has nice mathematical properties. Parameter estimation is a breeze. And with the central limit theorem, a great many things are distributed normally. But If there's one thing that's not distributed normally, it's catastrophic events. Models based on normal distributions underestimate the risk of crashes by orders of magnitidue. Yet a large portion of modern finance is built upon normal distributions, from portfolio optimization to the Sharpe ratio. This is a huge pain point and it means that all of our calculations for risk are wrong. Which brings me to...

#### Risk management is impossible

I got a call from Kevin the other day. "I had a 3 hour conversation with a professor from Columbia Business School," he told me. "And the only conclusion we've come to is that diversification is bullshit."

Well that's not good for our risk management strategy. Believe me, we've tried all sorts of models. Black-Litterman, PCA, Kelly Strategies, you name it. The fundamental problem with any model is that it has unknown parameters. And to estimate these parameters, you have to make forecasts, which will invariably be wrong. The best risk management, as they say, is to not trade at all.
  
Part 2 coming soon. I'll update once we have more experiences to share.