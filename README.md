THIS PROJECT IS ARCHIVED  
Intel will not provide or guarantee development of or support for this project, including but not limited to, maintenance, bug fixes, new releases or updates.
Patches to this project are no longer accepted by Intel.  
This project has been identified as having known security issues. 

# NeuroCounterfactuals

Repository for automatic counterfactual generation as described in our EMNLP 2022 paper:

> NeuroCounterfactuals: Beyond Minimal-Edit Counterfactuals for Richer Data Augmentation.<br>
> Phillip Howard, Gadi Singer, Vasudev Lal, Yejin Choi and Swabha Swayamdipta.<br>
> Findings of the Association for Computational Linguistics: EMNLP 2022.

## Prerequisites

- Python 3.8
- A working installation of [NeuroLogic Decoding](https://github.com/GXimingLu/neurologic_decoding), [CoCo-Ex](https://github.com/Heidelberg-NLP/CoCo-Ex) and [self-explaining-NLP](https://github.com/ShannonAI/Self_Explaining_Structures_Improve_NLP_Models)

## Installation

Clone the three repositories referenced above and create separate python virtual environments within each one named 'venv'. Then install all dependencies for each repository within its corresponding venv according to the repository's instructions. You can use the bash scripts located in the `install/` folder for assistance with this. Note that these scripts were tested on a Ubuntu 18.04 system. 

Clone this repository into the same directory which contains the three prerequisite repositories. Then, create a virtual environment for it and install the dependencies:

```
git clone https://github.com/IntelLabs/NeuroCounterfactuals.git
cd NeuroCounterfactuals
python3.8 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
```

Download the sentiment steer models:

```
mkdir models
cd models
gdown https://drive.google.com/uc?id=1HSrNMrq4OZ3nyTobNd2TZFcB5NYwluu-
unzip experts.zip && rm experts.zip
```

## Generating NeuroCounterfactuals

To generate NeuroCounterfactuals, run the `generate_counterfactuals.ipynb` notebook. You can then run `evaluate_counterfactuals.ipynb` to train and evaluate a sentiment classifier using the NeuroCounterfactuals.
