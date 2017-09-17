---
layout: post
title:  "Policy Gradients from Scratch: Part 1"
date:   2017-08-07 00:00:00
categories:
- cs
---

# Introduction

Policy gradients are a remarkable tool in reinforcement learning. You may have heard of [AlphaGo](https://en.wikipedia.org/wiki/AlphaGo), the AI which beat several world class players at the game of Go. AlphaGo learned the game with a (much more complicated) form of policy gradients! In this post we will write a policy gradient method from scratch in Python and test it on a simulated environment. 

# The Reinforcement Learning Problem
Reinforcement learning is, in broad strokes, a crude approximation of how humans learn. The two basic two components are an *agent* interacting with the *environment*. By taking actions in this environment, the agent receives rewards from the environment. The goal for the agent is to maximize rewards. In the case of AlphaGo, the actions are valid Go moves, and the reward is a win or a loss. 

![RL cycle](/assets/rl.png)
*([Source](http://web.stanford.edu/class/cs234/index.html))*

1. Environment supplies a reward $$R_t$$, and a state $$S_t$$ that describes the environment (for example, the positions of the pieces on a Go board is a state).
2. Agent takes action $$A_t$$.
3. We transition to a new state with a new reward.

# Policy Gradients
How does an agent decide which action to take given a state? This is described by the policy function, which each agent must have.

$$\pi(a | s, \theta) = P(A_t = a | S_t = s, \theta_t = \theta)$$

where $$\theta$$ is a set of parameters that are learned in order to optimize the policy function. For example, in "deep reinforcement learning", $$\theta$$ are the weights of a neural network. An agent also has a value function which it tries to maximize. In the simplest case, an agent's value function is simply the sum total of rewards that it receives. Let's call the value function $$\eta(\theta)$$.

The goal of reinforcement learning is to modify the parameters $$\theta$$ in order to maximize the value function $$\eta(\theta)$$. One elegant idea from elementary calculus is simply to use the gradient ascent algorithm. 

$$\theta_{t+1} \leftarrow \theta_t + \alpha \nabla_{\theta} \eta(\theta_t)$$

And that's it! Policy gradients in one line of math. Now onto the fine print.

# Derivation of the update rule
A natural value function is simply the expected value of the reward under the current policy. 
$$
\begin{equation} \label{eq1}
\begin{split}
\nabla_{\theta} \mathbf{E}_a[R_t] & = \nabla_{\theta} \sum_a \pi(a | s, \theta) R_t \\
 & = R_t \sum_a \nabla_{\theta} \pi(a | s, \theta) \\
 &= R_t \sum_a \pi(a | s, \theta) \frac{\nabla_{\theta} \pi(a | s, \theta)}{\pi(a | s, \theta)} \\
 &= R_t \sum_a \pi(a | s, \theta) \nabla_{\theta} \log(\pi(a | s, \theta)) \\
 &= R_t \mathbf{E}_a [\nabla_{\theta} \log(\pi(a | s, \theta))]
\end{split}
\end{equation}
$$

Over many many episodes, the following update rule will also work (without the expected value).

$$
\begin{equation}
\label{eq2}
\theta \leftarrow \theta + \alpha R_t \nabla_{\theta} \log(\pi(a | s, \theta))
\end{equation}
$$

# The softmax policy
So far we have not defined an explicit policy. Before we implement policy gradients in Python, we need to specify a policy function. In deep reinforcement learning, the policy function can be implemented with a neural network. Here, we opt for a simpler policy: the softmax policy. 

$$\pi(a | s, \theta) = \frac{\exp\{\theta^T \phi(s, a)\}}{\sum_a \exp\{\theta^T \phi(s, a)\}}$$

$$\phi(s, a)$$ is a one-hot vector of states. (See the code below for a specific implementation.)

# Python implementation
<script src="https://gist.github.com/edwardyu/e25ecaf723d39e08fb53b4f86e731690.js"></script>

Try running this with `python runner.py`.

![Linear Softmax Agent](/assets/pg.png)
