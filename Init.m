
clear all;
clc;

%% Generate the planar formation:

global n;
n = 3;
[q0, qDes] = formation(n,10);

%% Compute adjacency matrix:

adj = ones(n,n)-eye(n);

%% SDPT3 solver for the optimization problem:

% Compute the Formation control gain matrix
[A, Kd] = FindGains3D_Ver1_0(qDes, adj); 

%% Desired distance between each agent

dist_des=ones(n, n)-eye(n);

num_neighbors=2;