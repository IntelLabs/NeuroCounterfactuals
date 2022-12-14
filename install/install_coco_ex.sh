apt-get update && apt-get install openjdk-8-jdk
git clone https://github.com/Heidelberg-NLP/CoCo-Ex.git
cd CoCo-Ex
python3.7 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install spacy==2.3.5 nltk==3.5 gensim==3.8.3 pandas==1.2 gdown
python -m spacy download en
python -c "import nltk; nltk.download('stopwords')"
gdown https://drive.google.com/uc?id=107CE0Mn1TJST7sPu0h1ru1YvvUypqStw
unzip concepts_en_lemmas.p.zip && rm concepts_en_lemmas.p.zip
unzip cn_dict2.p.zip
mkdir StanfordParser-3.9.2
cd StanfordParser-3.9.2
wget https://nlp.stanford.edu/software/stanford-parser-full-2018-10-17.zip
unzip stanford-parser-full-2018-10-17.zip && rm stanford-parser-full-2018-10-17.zip
cd stanford-parser-full-2018-10-17
wget http://nlp.stanford.edu/software/stanford-english-corenlp-2018-10-05-models.jar
unzip stanford-english-corenlp-2018-10-05-models.jar
