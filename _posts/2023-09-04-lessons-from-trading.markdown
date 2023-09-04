---
layout: post
title:  "Lessons from trading"
date:   2023-09-04 00:00:00
categories:
- trading
---
This is a collection of various tidbits I learned during my time in quant finance, mostly as notes to myself. Your mileage may vary.

# On edge
- An edge tends to have certain unpleasant characteristics. Perhaps the capacity is low, or the returns are highly negatively skewed. The unpleasantness can be used as a sanity check that the edge in fact exists. 
- Oftentimes there is not enough data to generate a good backtest or statistical study. There can be big opportunities in these moments.
- Porting well known strategies to less liquid markets is a great place to start when researching a new asset class. You then start to see idiosyncracies about this particular market.
- The best strategies to run are ones where it has just enough capacity for your capital. It's not worth it for the big fish to compete with you, and you may be able to delay alpha decay if you max out the capacity.


# On risk
- If you see extreme values, say z-score > 3, 

$$p(\text{your model is wrong} | z > 3) >> p(\text{you saw a once in a lifetime event} | z > 3)$$

React accordingly.

- There are two types of risk limits. Ones that are estimation based (what's my correlation to S&P?) and ones that exist for no purpose other than to cover your ass (position limits). You can be flexible on the former, but never violate the latter.
- Sometimes it's worthwhile to diversify for "no reason". Ex) keeping funds on many different crypto exchanges; allocating to multiple CTAs, etc.
- It can be worthwhile to mentally model certain instruments as types of options, and then think about the greeks. The risk is much more clear that way. Ex) prediction markets as binary options, bonds as covered calls, etc.
    - You can also discover interesting trades this way. Ex) You don't need OTM options to be ITM in order to profit. Simply IV going up is sufficient. So if a hypothetical prediction market on nuclear war goes from 1 in 10 million to 1 in 1 million, that's a 10x return for you, even if nothing ends up happening.
- If your entire risk model relies on one key assumption, like, VIX never going above 50 or certain currencies having high correlation, you're in trouble.

# On system architecture
- It's much easier to design a system that can make a decision given a complete set of information, rather than a system that reacts to events. I.e., it's easier to build a trading trigger off an orderbook state, rather than one that reacts to `on_tick()` events. 
- Make the absolute crudest, dumbest system that can make money in production, and then improve from there. The psychological difference between squeezing more juice out of an already profitable system vs toiling away with an uncertain payoff is immense.

# Links
- [How to Make Money as a Random Dickhead](https://robotjames.com/posts/how-to-make-money-as-a-random-dickhead/)
- [State Machine Replication, and Why You Should Care with Doug Patti (Jane Street)](https://www.scribd.com/podcast/615342805/State-Machine-Replication-and-Why-You-Should-Care-with-Doug-Patti-Doug-Patti-is-a-developer-in-Jane-Street-s-Client-Facing-Tech-team-where-he-works)
- [The accidental HFT firm](https://web.archive.org/web/20210205014443/https://meanderful.blogspot.com/2018/01/the-accidental-hft-firm.html)
- [Dynamic Hedging: Managing Vanilla and Exotic Options](https://www.wiley.com/en-sg/Dynamic+Hedging%3A+Managing+Vanilla+and+Exotic+Options-p-9780471152804)
