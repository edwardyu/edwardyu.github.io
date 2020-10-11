---
layout: page
title: Research
permalink: /research/
---
Unfortunately much of my research is proprietary now, and directly focused on improving and building statistical models for quantitative trading. I've kept public what I can, although I am very much a practioner and not so much an academic.

#### Bayesian Neural Networks with Soft Evidence
*Genesis Trading (forthcoming)*

Bayes's rule deals with hard evidence, that is, we can calculate the probability of event A occuring given that event B has occurred. Soft evidence, on the other hand, involves a degree of uncertainty about whether event B has actually occurred or not. Jeffrey's rule of conditioning provides a way to update beliefs in the case of soft evidence. We provide a framework to learn a probability distribution on the weights of a neural network trained using soft evidence by way of two simple algorithms for approximating Jeffrey conditionalization. We propose an experimental protocol for benchmarking these algorithms on empirical datasets, even when the data is purposely corrupted.

<br>

#### [Personalized Anticancer Medicine Targeting via Machine Learning](/assets/nflx_poster.pdf)
*Data Science Institue + Columbia University Medical Center, Columbia University (2016 - 2017)*

Glioblastomas are an aggressive form of malignant brain tumour, with high tumour heterogeneity, poor patient prognoses, and limited treatment options. Leveraging public-domain genomic and chemotherapeutic drug response datasets, as well as open-source cheminformatics tools, we train modified-LASSO regression models (inspired by the Netflix recommendation system approach) to learn drug-gene interactions pertinent to predicting drug sensitivity. The resulting model is deigned for eventual laboratory validation on patient-derived glioblastoma cells.

<br>

#### [A Bayesian Ensemble for Unsupervised Anomaly Detection](https://arxiv.org/abs/1610.07677)
*Facebook, Inc (2016)*

Methods for unsupervised anomaly detection suffer from the fact that the data is unlabeled, making it difficult to assess the optimality of detection algorithms. Ensemble learning has shown exceptional results in classification and clustering problems, but has not seen as much research in the context of outlier detection. Existing methods focus on combining output scores of individual detectors, but this leads to outputs that are not easily interpretable. In this paper, we introduce a theoretical foundation for combining individual detectors with Bayesian classifier combination. Not only are posterior distributions easily interpreted as the probability distribution of anomalies, but bias, variance, and individual error rates of detectors are all easily obtained. Performance on real-world datasets shows high accuracy across varied types of time series data.

