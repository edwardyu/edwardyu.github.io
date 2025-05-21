---
layout: post
title:  "How to Price: Will HYPE Overtake SOL By End of Year 2026?"
date:   2025-05-21 00:00:00
categories:
- trading
---
This is reposted from [X](https://x.com/mr_plumpkin/status/1924752488173109701). The original impetus for the thread was: 

> **@ThinkingUSD**  
> Will bet any amount of Money Hyperliquid flips Solana price by end of 2026.  
> *Last edited 7:07 AM · May 20, 2025*

Okie dokie let's do a quick thread on how I would think about pricing this. Caveat: only spent like 15 min or so thinking about this, feel free to debate in the comments. That being said, down to do a small education bet, of let's say $1m @ThinkingUSD?

So this type of option is known as a binary "Margrabe option", which gives the buyer the right, but not the obligation, to exchange the second asset for the first at the time of maturity T. 

Our payoff is 1 if the price of HYPE > SOL, and 0 otherwise. Luckily some PhDs worked out all the math decades ago, here's the formula for the price of the option: 
![Binary Margrabe Formula](/public/binary-margrabe-formula.png)

Notice that it depends on the volatility of both assets and the correlation! So putting together a tiny python script to estimate the inputs, I get: 

```
T = 1.616 years
r = .04
HYPE = 26.698
SOL = 166.88
sigma_hype = 1.101
sigma_sol = 0.826
corr = .619
```

Which spits out a fair value of $0.01298, or about a 1.3% probability HYPE overtakes SOL by end of 2026. This number does feel a bit low to me, so it's important to note the conditions in which this option could be wildly mispriced.

This option could be mispriced if:

* we have a strong directional view
* we think vols or correlation is mispriced
* we think the price movements have fat tails

Disagreements are what makes markets fun! Lmk your offer 
@ThinkingUSD
 
