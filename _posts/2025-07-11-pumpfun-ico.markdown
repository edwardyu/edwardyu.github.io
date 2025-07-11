---
layout: post
title:  "How to price: pump.fun ICO"
date:   2025-07-11 00:00:00
categories:
- trading
---

OK quick thread on how I would price the @pumpdotfun ICO using options theory, and why there might be a trading opportunity! 

![Polymarket Pump.fun Probabilities](/public/polymarket-pumpfun-probabilities.png)

Skimming the market rules and doing a Google search, this seems to be a simple European binary call option with strikes at \$4B, \$5B, \$8B, \$10B. It expires in 49 hours and the current underlying price can be obtained from the Hyperliquid pre-market @ \$5.353B FDV. 

If we use Black-Scholes, we can convert thinking in price-space to thinking in vol-space. Here I've plotted the market implied volatilities:

![Polymarket Pump.fun IV](/public/pumpfun-volatility-smile.png)

Two things immediately jump out: 

1. The implied volatility (IV) at the \$5B strike is 150, which appears quite low. This suggests an expected ICO-day price move of only 7.85% in either direction.

2. The ratio of out-of-the-money (OTM) to at-the-money (ATM) volatility is extremely high, with the \$8B strike showing an IV of 640%.
 

My intuition tells me I would want to push up the vol at the $5B strike and push down the vols at the $8B, $10B strikes. For binary options:

- higher IV --> outcomes converge to 50/50  
- lower IV --> outcomes converge to 100/0  


If spreads permit, this would be buying "No" at all three strikes. Optionally, can compute the deltas and hedge with the pre-market futures on Hyperliquid. Of course there is no serious money here but it's fun to think about things in options pricing terms.
