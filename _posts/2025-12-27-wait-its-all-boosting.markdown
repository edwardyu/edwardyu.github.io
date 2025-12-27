---
layout: post
title:  "Wait it's all boosting? A framework for alpha discovery"
date:   2025-12-27 00:00:00
categories:
- trading
---

![Boosting meme](/public/boosting-meme.png)

A few days ago, I had the realization that nearly every profitable trading alpha I’ve found can be formalized as an instance of boosting—adding a small, targeted correction on top of a strong base model. This is obvious to seasoned practitioners, but I’ve found it to be a surprisingly useful mental checklist when evaluating new ideas.

## A simplistic boosting algorithm
1. Fit a model $$f_1(x)$$ to $$y$$

2. Compute residuals  
   $$r_1 = y - f_1(x)$$

3. Fit a second model $$f_2(x)$$ to $$r_1$$

4. Repeat, summing the models:  
   $$\hat{y} = f_1(x) + f_2(x) + f_3(x) + \dots$$

Each new model is trained on what the previous ones failed to explain. Boosting works because each step makes the best possible small correction to the model in the direction that most reduces loss. For squared error loss, fitting to residuals is exactly gradient descent in function space.

Let's call $$f_1(x)$$ the base model and $$f_2(x)$$ the alpha model. In the context of trading, the base model is what the market is already pricing in. We should expect the base model to be very efficient and very good in the vast majority of circumstances, and only in special cases can it be beaten by fitting an additional alpha model. Therefore, each alpha can be thought of as gradient descent in the direction of making markets more efficient. How fun! 

## A 3-step alpha checklist
1. Can we replicate the base model? I.e., do we understand the models that other market participants are using to price this asset?
2. Can we discover certain circumstances where the base model is inaccurate? Importantly, can we explain why this phenomenon exists?
3. Can we fit a better alpha model on the residual? The larger the residual, the more skeptical we should be. For example, if someone tells you their alpha is in market timing SPX, you should be highly skeptical, as it implies the base model is mispricing SPX by 20%+ over a period of months or years.

## A concrete alpha
This one comes from @DeepDishEnjoyer on X, who noticed that [during a GME meme stock rally, the puts were increasing in value even as the price of the stock was increasing](https://x.com/DeepDishEnjoyer/status/1790083482149884329) (i.e., the puts had positive delta, a very strange thing!).

> This is quite odd from a first principles perspective. GME closed 17 handle on Friday. Today it meme squeezed up because of Roaring Kitty. A basic model is: it continues meme’ing - then these puts expire worthless or the meme ends and we go back to where we were at at Friday. But note that you could have sold these puts at 75 cents today even though they closed in the 50s on Friday!!!! They should be actually be worth *less* since there is no state of the world where downside vol increased.

> That’s easily anywhere from 20-40 cents of EV on these puts. And indeed that’s where these puts landed now. So why does it happen? Well, market makers don’t pay a large amount of attention to the wings of their vol surface. ATM implied vol got correctly bid, but they moved the...rest of the surface in parallel EVEN THOUGH THAT MAKES NO SENSE IN A SCENARIO WHERE A STOCK MEME GAPPED UP. Again, vol follows fairly two discrete paths that are intimately tied to stock price - vol is high when the stock is memeing, vol necessarily dies down when it stops.

> At the money implied vol should increase. But the strike vol of the 10 strike put should not be massively increasing as the probability of going *below* 10 has not increased today from yesterday, while the options market is implying it has.

Let's go through the checklist. 

### Can we replicate the base model?
Yes, we can simply look at the implied volatility surface of GME. More importantly, we can understand how the surface evolved to where it is. When there is a large contigent of price insensitive buyers hitting the ask over and over (aka retail gobbling up calls), well it's pretty obvious how market makers will react. They will shift the volatility curve upwards. Since they are focused on high-frequency supply/demand dynamics, they are not attempting to model, for example, fair value vs medium term future realized volatility. The medium term traders (hedge funds, etc) will diffuse the risk over time using a different base model for pricing relative value. 

### Can we discover certain circumstances where the base model is inaccurate?
A parallel shift upwards of the volatility surface is pretty reasonable in 99% of circumstances. It only falters under a set of very special factors:

1. A large amount of speculative flows with complete disregard for fundamentals.
2. Positive spot-vol dynamics, i.e., as price moves up vol also moves up. This is the opposite of how most stocks work.
3. The specific condition that if the stock price goes up and back down, we are in the same world state as before. You can imagine a lot of times this isn't the case, because there can be news that changes the fundamental price of the asset. 

It's reasonable that this "meme stock phenemenon" is so rare that the market hasn't fully priced in the dynamics when this occurs. 

### Can we fit a better alpha model on the residual?

Yes, our volatility surface will be the same as the market except in the region of low delta puts, and only in the case of a meme stock rally. To put it in technical terms, we are adjusting the skew of the surface. This passes the sniff test because the residual is small: it is a temporary, small mispricing in the most special of circumstances. If there was concentrated flow in the specific region of low delta puts, market makers would adjust that part of the surface, eliminating further trading opportunities. The capacity of this strategy is very limited, and will probably disappear as quants craft specialized models to plug this specific hole should it ever become large enough to warrant the attention of the market makers.

![Volatility surface: parallel shift vs rotation](/public/shift-rotate.png)

## Closing thoughts
In a way, we all rely on base models in the absence of more information. I will assume the better chess player beat the worse one, unless I find out he got food poisoning the morning of the match. I will avoid unsafe neighborhoods in unfamiliar cities, unless I have special knowledge otherwise. This "override" mechanism is exactly what boosting is! 
