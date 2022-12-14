apt-get install git-lfs
git clone https://github.com/ShannonAI/Self_Explaining_Structures_Improve_NLP_Models.git
cd Self_Explaining_Structures_Improve_NLP_Models
python3.7 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install torch==1.7.0+cu110 -f https://download.pytorch.org/whl/torch_stable.html
pip install pytorch-lightning==1.0.6 transformers==3.4.0 gdown
mkdir -p checkpoints/sst5_checkpoints/large/
gdown https://drive.google.com/uc?id=15YWyzsxG8NVLLBoXXFZp3RqGTFphWWP8 -O checkpoints/sst5_checkpoints/large/
git lfs install
git clone https://huggingface.co/roberta-large
cp ../NeuroCounterfactuals/install/config.json roberta-large/