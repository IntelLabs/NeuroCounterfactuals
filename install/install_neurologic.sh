git clone https://github.com/GXimingLu/neurologic_decoding.git
cd neurologic_decoding
python3.7 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install torch==1.7.0+cu110 -f https://download.pytorch.org/whl/torch_stable.html
pip install ipython==7.21.0 pandas==1.1.5 sklearn tensorboard==2.4.1 tensorboardX==2.1 transformers==3.0.2 protobuf==3.20.0 scipy gdown
mkdir models
cd models
gdown https://drive.google.com/uc?id=1HSrNMrq4OZ3nyTobNd2TZFcB5NYwluu-
unzip experts.zip && rm experts.zip
