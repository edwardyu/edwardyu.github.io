---
layout: post
title:  "The Wisdom of Crowds"
date:   2017-07-31 00:00:00
categories:
- statistics
---
The wisdom of crowds is an extremely intuitive idea: the more people we have, the more knowledgeable that group is. It's why democracy is based on the common vote, and why juries have more than one person. The mathematics behind the wisdom of crowds is simple and elegant. 

## Condorcet's Jury Theorem

If a group is voting on a resolution, and the resolution passes with a majority vote, Condorcet's Theorem gives the probability that the group makes the correct decision. The assumptions are that we know each individual will make a correct decision with probability $$p$$, and that each voter makes decisions independently. 

If we model each voter as a Bernoulli random variable, then the group's votes follow a Binomial distribution. Condorcet's Theorem is simply the CDF of this Binomial distribution. 

$$Pr \{\text{correct decision}\} = \sum_{j = \frac{m+1}{2}}^m \binom{m}{j} p^j(1-p)^{m-j}$$

As long as $$p > .5$$ (even if only slightly), then adding more voters will improve the likelihood of reaching a correct decision. See the image below for the case $$p = .6$$.

<img src="/assets/condorcet.jpg" width="600" height="600" />
(*[Source](http://rstb.royalsocietypublishing.org/content/364/1518/743)*)

## Meta-knowledge
You can imagine that reality is hardly ever this nice. People are not independently and identically distributed random variables. Moreover, we hardly ever know the true probability that a voter will be correct. In this case we can make use of meta-knowledge, which is usually auxillary information about a voter's decision making process. For example, not only can we ask each voter to vote on the resolution, but we can also ask them to give a confidence level in their decision. Unfortunately, as it turns out, people are bad at rating their own confidence levels, and incorporating this information does not improve the probability of getting the correct answer much over just using a majority vote. On the other hand, the use of meta-knowledge has led to a nice heuristic, [the discovery of which was published in Nature](http://www.nature.com/nature/journal/v541/n7638/full/nature21054.html), that *the surpsingly popular answer is the correct one*.

## The Surprisingly Popular Answer

Take the following yes/no question: Is Philadelphia the capital of Pennsylvania?

The majority of respondents will answer yes. A minority will know that the correct answer is that Harrisburg is the capital of Pennsylvania. For simplicity's sake let's assume a vote for no is a vote for Harrisburg. The respondents rated their own answers with similarly high confidence no matter if they were correct or not, so immediately we see that use of confidence scores as meta-knowledge fails.

The surprisingly popular algorithm asks respondents to give two pieces of information:

1. The answer to the question (yes/no).
2. What percent of people do you expect will agree with your answer?

In this case, people who think Philadelphia is the capital expect nearly everyone to agree with them, while those who believe Harrisburg is the capital expect to be in the minority. Thus, Harrisburg is the *surprisingly popular* answer, having outperformed relative to expectations.

![Philadelphia question](/assets/philadelphiaq.png)

This simple algorithm outperforms majority vote in a wide variety of applications, from trivia to art appraisal. Why does it work?

Imagine two worlds: the real world (i.e., Harrisburg is the capital) and a counterfactual one (i.e., Philadelphia is the capital). Voters do not know which world is the actual one. If we were in the counterfactual world, we would expect a higher percentage of voters to vote that Philadelphia is the capital relative to the real world. Since we are in the real world, votes for Philadelphia underperform relative to expectations. 

If you ever happen to try this algorithm in a real world setting, please contact me! I'd love to have more data on how this heuristic performs in the field.



*(I'm generously being supported this summer by a research grant from Columbia University. As such I'm writing a series of blog posts about my experience and interesting ideas that I come across in my field of research.)*