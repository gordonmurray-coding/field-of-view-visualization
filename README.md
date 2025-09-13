<p align="left">
  <a href="https://www.mathworks.com/products/matlab.html">
    <img src="https://img.shields.io/badge/MATLAB-R2022a%2B-blue" alt="MATLAB">
  </a>
  <a href="./LICENSE">
    <img src="https://img.shields.io/badge/license-MIT-success" alt="License: MIT">
  </a>
</p>

# Field of View (FOV) Visualization

MATLAB scripts to visualize sensor **fields of view (FOVs)** and plot trajectories within those FOVs.  
Results (example image) are written to `results/`.

## Quickstart

1. From MATLAB Desktop, run:
   ```matlab
   run('run_demo.m')
Or from the command line:

matlab -batch "run('run_demo.m')"
Outputs will be saved to:

results/fov_example.png
Repository Structure

.
├── data/           # (optional) input CSVs for scenarios
├── results/        # generated figures
├── run_demo.m      # entrypoint to produce the example figure
├── .gitignore
├── LICENSE
└── README.md

<p align="center"> <img src="results/fov_example.png" alt="Synthetic FOV Example" width="680"> </p>
Requirements
MATLAB R2022a+

(Optional) relevant toolboxes if you enable advanced features

Installation

git clone https://github.com/gordonmurray-coding/field-of-view-visualization.git
cd field-of-view-visualization

License
This project is licensed under the MIT License.
