# distr_formation_control
# 🚁 Distributed Control of Autonomous Multi-Agent Systems (3D Formation Control)

This project presents a **distributed control strategy** for a team of autonomous agents (e.g., UAVs) to achieve a desired 3D formation. The work combines advanced techniques such as **Semidefinite Programming (SDP)**, **collision avoidance**, and **fixed-scale control**, implemented and simulated using **MATLAB and Simulink**.


---

## 🎯 Project Objectives

- Design a **distributed control algorithm** for 3D formation control of multiple agents.
- Ensure **collision avoidance** through distributed and reactive strategies.
- Use **Semidefinite Programming (SDP)** for optimal gain design, enhancing robustness.
- Implement **fixed-scale control** to manipulate the final dimensions of the formation.
- Simulate system behavior and formation control using **MATLAB / Simulink**.

---

## 🧩 Methodology

### 📍 Control Architecture
- **Local relative position measurements** are used to inform agents.
- **Semidefinite Programming (SDP)** (using CVX and SDPT3 solver) is applied for control gain optimization.
- **Distributed collision avoidance algorithm** ensures safety between agents.
- **Fixed-scale control** regulates the size of the formation.

### ⚙️ State Space Model
- Multi-agent dynamic systems are described using a state-space model with inter-agent coupling.
- The Laplacian matrix structure encodes interaction topology.

### 📐 Control Gain Design
- Control gains are computed to satisfy stability criteria (Theorem 1).
- SDP formulation is used to maximize robustness against disturbances and uncertainties.

### 🛡️ Robustness Properties
- The controller is robust against perturbations.
- Ensures stability of the formation under varying initial conditions.

### 🚫 Collision Avoidance
- Reactive, distributed algorithm to avoid inter-agent collisions.
- Discussed extreme cases when no safe direction exists.
- Options explored: adaptive control and safe direction determination.

### 📏 Fixed-Scale Control
- Maintains desired final formation dimensions.
- Ensures scale invariance while preserving formation shape.

---

## 🧪 Simulations

Simulations were performed using **MATLAB and Simulink**, demonstrating:
- **8 UAVs formation control**, showing trajectories and final formation achievement.
- Continuous lines represent UAV trajectories, discontinuous lines show inter-agent distances.
- **Dynamic evolution of the formation** and responsiveness to initial conditions.

### Results Snapshots:
- **Figure 1:** UAVs trajectories
<img width="355" alt="image" src="https://github.com/user-attachments/assets/d3adf52e-9962-4807-b901-10ab05068766" />

- **Figure 2:** Final 3D formation
- Robust formation maintenance and successful collision avoidance are observed.
<img width="346" alt="image" src="https://github.com/user-attachments/assets/f9260407-4a27-42e7-bb9d-eae407087d20" />

- **Figure 3:** Safety Zone Test
<img width="344" alt="image" src="https://github.com/user-attachments/assets/0bd964f9-d6a3-4140-b4c0-94dbbcb45eab" />


---

### References:
- Kaveh Fathian, Sleiman Safaoui, Tyler H. Summers, Nicholas R. Gains, Robust 3D Distributed Formation Control with Collision Avoidance and Application to Multirotor Aerial Vehicles, 2019



## 📂 Project Structure

```bash
/Multi-Agent-System-3D-Formation
│
├── main_simulation.m             # Main script to run the simulation
├── control_gain_design.m         # SDP-based gain design
├── collision_avoidance.m         # Distributed collision avoidance algorithm
├── fixed_scale_control.m         # Fixed scale formation control logic
├── state_space_model.m           # System dynamic modeling
├── README.md                     # Project documentation

