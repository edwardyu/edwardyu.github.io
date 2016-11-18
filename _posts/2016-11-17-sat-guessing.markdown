---
layout: post
title:  "Why you should always guess on the SAT"
date:   2016-11-17 -0700
categories: math
---

Some standardized tests, like the SAT Subject Tests, have a guessing penalty. You get 1 point for every correct answer, 0 points for a blank answer, and -.25 points for a wrong answer. The test is usually in multiple choice format with 5 answer choices. The conventional wisdom that was drilled into me in high school is to leave the answer sheet blank if you cannot eliminate any of the answer choices. On the contrary, I argue that **you should always guess an answer rather than leaving it blank, even if you are not able to eliminate any of the answer choices**. This is because the SAT is structured such that you can take the test multiple times and submit your highest score. Thus, if you have the ability to take the test two or more times, you statistically benefit from guessing on questions you do not know.

# Some statistical analysis
Let's say there are 10 questions on a test you do not know, and you randomly guess on all of them. Let $$S$$ denote your score on those 10 questions. If $$S > 0$$, then you have a statistical advantage in randomly guessing. Conventional wisdom says that on average, your score on those 10 questions will be 0. 

$$E[S] = 10*(.2 * 1 - .8 * .25) = 0$$

I argue that this is the wrong question to ask. The real question is: on average, if we take the test $$n$$ times and submit the best score, do we gain an advantage? That is, we want to know if

$$E[\max(S_1, S_2, ..., S_n)] > 0$$

Let us define another random variable, $$T$$, that is the number of correct answers. Note that $$T$$ can be easily converted to $$S$$ by $$S = 1 * T - .25 * (10 - T)$$. We do this because

$$T_1, T_2, ..., T_n \sim Binomial(10, .2)$$

There is a field of statistics called *order statistics* that can help us answer this question. 
Define
$$T_{(n)} := \max(T_1, T_2, ..., T_n)$$. The CDF of $$T_{(n)}$$ is $$F(x)^n$$, where $$F(x)$$ is the CDF of the binomial distribution. In our case, this is

$$F(x) = \sum_{i=0}^{\lfloor x \rfloor} {10 \choose i}(.2)^i(1-.2)^{n-i}$$

Then the expected value can be calculated as:

$$E[T_{(n)}] = \sum_{x=0}^n\left(1 - F(x)^n\right)$$

The probability that you end up better off by guessing is the probability that you end up with more than 2 questions correct (the breakeven point).

$$P(winning) = 1 - [F(2)]^n$$

# Graphs
If you take the test 3 times, you should expect a gain of 1.34 points for every 10 questions you guessed on. 
![Gain](/assets/sat1.png)

If you take the test 3 times, you have a 69% chance of getting a better score when you guess as opposed to leaving the answer sheet blank.
![Probablity of Gain](/assets/sat2.png)

# Caveats
I assume that you have a linear utility function, i.e., gaining 10 points on a test is equal in magnitude to losing 10 points. If you are risk averse, ignore this advice. Still, I think the vast majority of students would benefit from guessing.