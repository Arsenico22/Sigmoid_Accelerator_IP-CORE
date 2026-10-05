# FPGA IP-Core Design & Characterization for AI Activation Functions

> **Master's Thesis Project** | M.Sc. in Electronic Engineering  
> *University of Calabria (UNICAL)*  
> **Author:** Danilo Antonio Tarantino  

This repository contains the full VHDL source code, simulation testbenches, and analytical toolkits developed for the design, optimization, and hardware characterization of a high-performance FPGA IP-Core implementing the **Sigmoid activation function** for Artificial Intelligence and Deep Learning hardware accelerators (such as Vision Transformers).

---

## 📌 Project Overview

Non-linear activation functions are computational bottlenecks in hardware-implemented Neural Networks. This project focuses on designing an efficient FPGA-based IP-Core using fixed-point arithmetic, evaluating trade-offs between hardware resource utilization (LUTs, Block RAMs), execution latency, and mathematical accuracy.

The design relies on a Lookup Table (LUT) mapping approach combined with mathematical symmetry exploitation to minimize hardware overhead while supporting highly parallel processing environments.

---

## 🚀 IP-Core Architecture Releases

The IP-Core architecture evolved across three major iterations to optimize dynamic range, overflow handling, memory implementation, and fixed-point precision:

* **Baseline Release:** Core lookup-table implementation mapping a constrained input range. This baseline intentionally utilizes **Distributed RAM (LUT-based memory)** rather than dedicated Block RAM, providing a lightweight reference for resource utilization and initial numerical accuracy without dedicated overflow control or clipping logic.
* **Release V2:** Introduced dedicated **overflow control and clipping logic** to securely manage out-of-bound inputs, extending the mapped input dynamic range while transitioning to **dedicated Block RAM (BRAM)** primitives for efficient memory storage.
* **Release V3 (Optimized & Scalable):** 
  * Standardized the output interface to the **Q1.15 fixed-point format** to maximize numerical resolution.
  * Exploited **mathematical symmetry** (sigmoid(-x) = 1 - sigmoid(x)) to cover both positive and negative extended input ranges, effectively doubling the functional range without doubling the required BRAM capacity.
  * Scaled into a **Multi-Module (Parallel PE)** architecture to process multiple data streams simultaneously per clock cycle for tensor-level acceleration.

---

## 📈 Out-of-Context (OOC) Scalability & Hardware Parallelism

To evaluate the parallel scalability of the architecture, an **Out-of-Context (OOC)** synthesis flow was performed by instantiating an increasing number of Processing Elements (PEs):

* **Resource & Power Scaling:** Increasing the number of parallel PEs demonstrates predictable scaling across Flip-Flops, LUTs, BRAMs, and dynamic power consumption.
* **Routing Congestion & Saturation:** At extreme parallel scaling, physical device utilization limits lead to increased routing congestion, which reduces the maximum achievable clock frequency and causes throughput saturation.

---

## ⚔️ Hardware Comparison: FPGA IP-Core vs CPU

The hardware accelerator was benchmarked against a modern multi-core, multi-threaded CPU processing tensor dataset samples:

* **Execution Latency:** The parallel FPGA IP-Core achieves orders-of-magnitude faster processing times compared to both single-threaded loop execution and multi-threaded vectorized CPU routines.
* **Energy Efficiency:** By executing dedicated fixed-point arithmetic pipelines natively on FPGA fabrics, the IP-Core achieves massive throughput gains while drastically reducing total power consumption compared to high-TDP processor architectures.

---

## 📁 Repository Structure

```text
├── vhd_files/          # VHDL source code & simulation testbenches for all architecture releases (Baseline, V2, V3)
├── mem_files/          # BRAM memory initialization files (.mem) and lookup table stimulus vectors
├── xdc/                # Xilinx Design Constraints (.xdc) specifying timing requirements
├── Pre_processing/     # Python scripts for dataset formatting, quantization, and LUT initialization
├── Post_processing/    # Validation scripts for numerical error evaluation and output verification
└── Results_analysis/   # MATLAB scripts for HW vs Golden Model numerical accuracy and FPGA vs CPU execution benchmarks