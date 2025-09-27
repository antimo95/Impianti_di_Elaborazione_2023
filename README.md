# ⚙️ Impianti di Elaborazione – Performance & Reliability Analysis

![JMP](https://img.shields.io/badge/Software-JMP-purple) 
![MATLAB](https://img.shields.io/badge/Software-MATLAB-blue) 
![Apache](https://img.shields.io/badge/WebServer-Apache2.4-red) 
![JMeter](https://img.shields.io/badge/Tool-JMeter-orange) 
![OS](https://img.shields.io/badge/OS-Linux%20%7C%20Windows-green)

## 📌 Project Overview
This project explores **performance evaluation and reliability analysis** in computer systems, developed as part of the *Impianti di Elaborazione* course.  
It is divided into multiple phases, each focusing on benchmarking, workload characterization, web server analysis, dependability, and regression.

---

## 📂 Project Structure

### 🔹 Chapter 1 – Benchmark
Performance comparison between two systems (**Intel i5-5200U** vs **Intel i7-3537U**) using the **n-body benchmark**.
- Sample size estimation with Central Limit Theorem  
- Normality tests (Q-Q plots, Shapiro-Wilk)  
- Paired t-test for statistical significance  

### 🔹 Chapter 2 – Workload Characterization
Construction of a **synthetic workload** starting from real execution traces.  
- Data filtering & outlier detection  
- **Principal Component Analysis (PCA)**  
- **Clustering (Ward method)**  
- Evaluation of explained variance and trade-off between components and clusters  

### 🔹 Chapter 3 – Web Server Performance
Performance analysis of **Apache 2.4** on Debian VM.  
- **Capacity Test**: knee & usable capacity determination  
- **Workload Characterization** (PCA + Clustering on **JMeter** logs)  
- **Design of Experiments (DOE)**: factor importance and ANOVA  

### 🔹 Chapter 4 – Dependability
Reliability evaluation through exercises on:  
- Upper Bound Theorem  
- Conditioning  
- Mean Time To Failure (MTTF)  
- Fault Tree Analysis  

### 🔹 Chapter 5 – Field Failure Data Analysis (FFDA)
Real-world reliability data study of **Mercury** and **Blue Gene/L** supercomputers.  
- Sensitivity analysis  
- Reliability modeling  
- Kolmogorov-Smirnov goodness-of-fit test  
- Dependability bottleneck identification  

### 🔹 Chapter 6 – Regression & Failure Prediction
Application of **linear regression models** on experimental datasets (EXP1, EXP2, os1–os3, VMres1–VMres3).  
- Assumption verification (linearity, homoscedasticity, normality)  
- Parameter estimation  
- **Failure prediction based on VM resource metrics**

---

## 🛠 Tools & Technologies Used
- **Statistical Analysis**: JMP, MATLAB  
- **Simulation & Data Collection**: JMeter, Apache Web Server  
- **Programming**: Bash scripts for benchmarks, MATLAB scripts for PCA & hypothesis testing  

---

## 📈 Conclusion
The project successfully combined **benchmarking, workload modeling, statistical methods, and reliability engineering** to evaluate system performance and predict failures.  
This multidisciplinary approach highlights the importance of **data-driven decision-making** in computer system analysis.

---

## 👨‍💻 Authors
- Luigi Nuzzo   
- Giuseppe Porcaro 
- Antimo Barbato 

