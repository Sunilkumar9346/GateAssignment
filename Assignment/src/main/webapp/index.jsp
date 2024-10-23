<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gate Assignment</title>
    <link rel="stylesheet" href="index.css">
    <script src="timer.js" defer></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
 <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 20px;
        }
        h1, h2 {
            color: #2C3E50;
        }
        section {
            margin-bottom: 20px;
        }
    </style>
</head>
<body onload="startExam()">
    
    <jsp:include page="homemenu.jsp"></jsp:include>
    <!DOCTYPE html>


<h1>Engineering Subjects Overview</h1>

<section>
    <h2>Section 1: Engineering Mathematics</h2>
    <ul>
        <li><strong>Linear Algebra:</strong> Vector space, basis, linear dependence and independence, matrix algebra, eigenvalues and eigenvectors, rank, solution of linear equations - existence and uniqueness.</li>
        <li><strong>Calculus:</strong> Mean value theorems, theorems of integral calculus, evaluation of definite and improper integrals, partial derivatives, maxima and minima, multiple integrals, line, surface and volume integrals, Taylor series.</li>
        <li><strong>Differential Equations:</strong> First order equations (linear and nonlinear), higher order linear differential equations, Cauchy's and Euler's equations, methods of solution using variation of parameters, complementary function and particular integral, partial differential equations, variable separable method, initial and boundary value problems.</li>
        <li><strong>Vector Analysis:</strong> Vectors in plane and space, vector operations, gradient, divergence and curl, Gauss's, Green's and Stokes’ theorems.</li>
        <li><strong>Complex Analysis:</strong> Analytic functions, Cauchy’s integral theorem, Cauchy’s integral formula, sequences, series, convergence tests, Taylor and Laurent series, residue theorem.</li>
        <li><strong>Probability and Statistics:</strong> Mean, median, mode, standard deviation, combinatorial probability, probability distributions, binomial distribution, Poisson distribution, exponential distribution, normal distribution, joint and conditional probability.</li>
    </ul>
</section>

<section>
    <h2>Section 2: Networks, Signals and Systems</h2>
    <ul>
        <li><strong>Circuit Analysis:</strong> Node and mesh analysis, superposition, Thevenin's theorem, Norton’s theorem, reciprocity. Sinusoidal steady state analysis: phasors, complex power, maximum power transfer.</li>
        <li><strong>Time and Frequency Domain Analysis:</strong> Linear circuits: RL, RC and RLC circuits, solution of network equations using Laplace transform.</li>
        <li><strong>Linear 2-Port Network Parameters:</strong> Wye-delta transformation.</li>
        <li><strong>Continuous-Time Signals:</strong> Fourier series and Fourier transform, sampling theorem and applications.</li>
        <li><strong>Discrete-Time Signals:</strong> DTFT, DFT, z-transform, discrete-time processing of continuous-time signals. LTI systems: definition and properties, causality, stability, impulse response, convolution, poles and zeroes, frequency response, group delay, phase delay.</li>
    </ul>
</section>

<section>
    <h2>Section 3: Electronic Devices</h2>
    <ul>
        <li><strong>Energy Bands:</strong> In intrinsic and extrinsic semiconductors, equilibrium carrier concentration, direct and indirect band-gap semiconductors.</li>
        <li><strong>Carrier Transport:</strong> Diffusion current, drift current, mobility and resistivity, generation and recombination of carriers, Poisson and continuity equations.</li>
        <li><strong>Devices:</strong> P-N junction, Zener diode, BJT, MOS capacitor, MOSFET, LED, photo diode and solar cell.</li>
    </ul>
</section>

<section>
    <h2>Section 4: Analog Circuits</h2>
    <ul>
        <li><strong>Diode Circuits:</strong> Clipping, clamping and rectifiers.</li>
        <li><strong>BJT and MOSFET Amplifiers:</strong> Biasing, AC coupling, small signal analysis, frequency response.</li>
        <li><strong>Current Mirrors and Differential Amplifiers.</strong></li>
        <li><strong>Op-amp Circuits:</strong> Amplifiers, summers, differentiators, integrators, active filters, Schmitt triggers and oscillators.</li>
    </ul>
</section>

<section>
    <h2>Section 5: Digital Circuits</h2>
    <ul>
        <li><strong>Number Representations:</strong> Binary, integer and floating-point numbers.</li>
        <li><strong>Combinatorial Circuits:</strong> Boolean algebra, minimization of functions using Boolean identities and Karnaugh map, logic gates and their static CMOS implementations, arithmetic circuits, code converters, multiplexers, decoders.</li>
        <li><strong>Sequential Circuits:</strong> Latches and flip-flops, counters, shift-registers, finite state machines, propagation delay, setup and hold time, critical path delay.</li>
        <li><strong>Data Converters:</strong> Sample and hold circuits, ADCs and DACs.</li>
        <li><strong>Semiconductor Memories:</strong> ROM, SRAM, DRAM.</li>
        <li><strong>Computer Organization:</strong> Machine instructions and addressing modes, ALU, data-path and control unit, instruction pipelining.</li>
    </ul>
</section>

<section>
    <h2>Section 6: Control Systems</h2>
    <ul>
        <li><strong>Basic Control System Components:</strong> Feedback principle, transfer function, block diagram representation, signal flow graph, transient and steady-state analysis of LTI systems, frequency response.</li>
        <li><strong>Stability Criteria:</strong> Routh-Hurwitz and Nyquist stability criteria, Bode and root-locus plots.</li>
        <li><strong>Compensation:</strong> Lag, lead and lag-lead compensation.</li>
        <li><strong>State Variable Model:</strong> Solution of state equation of LTI systems.</li>
    </ul>
</section>

<section>
    <h2>Section 7: Communications</h2>
    <ul>
        <li><strong>Random Processes:</strong> Auto correlation and power spectral density, properties of white noise, filtering of random signals through LTI systems.</li>
        <li><strong>Analog Communications:</strong> Amplitude modulation and demodulation, angle modulation and demodulation, spectra of AM and FM, super heterodyne receivers.</li>
        <li><strong>Information Theory:</strong> Entropy, mutual information and channel capacity theorem.</li>
        <li><strong>Digital Communications:</strong> PCM, DPCM, digital modulation schemes (ASK, PSK, FSK, QAM), bandwidth, inter-symbol interference, MAP, ML detection, matched filter receiver, SNR and BER.</li>
        <li><strong>Error Correction:</strong> Fundamentals of error correction, Hamming codes, CRC.</li>
    </ul>
</section>

<section>
    <h2>Section 8: Electromagnetics</h2>
    <ul>
        <li><strong>Maxwell's Equations:</strong> Differential and integral forms and their interpretation, boundary conditions, wave equation, Poynting vector.</li>
        <li><strong>Plane Waves:</strong> Reflection and refraction, polarization, phase and group velocity, propagation through various media, skin depth.</li>
        <li><strong>Transmission Lines:</strong> Equations, characteristic impedance, impedance matching, impedance transformation, S-parameters, Smith chart.</li>
        <li><strong>Waveguides:</strong> Rectangular and circular waveguides, light propagation in optical fibers, dipole and monopole antennas, linear antenna arrays.</li>
    </ul>
</section>

</body>
</html>
    
    
   
</body>
</html>
