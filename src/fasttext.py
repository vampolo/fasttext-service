from gensim.models import KeyedVectors

model = KeyedVectors.load_word2vec_format('/opt/data/wiki.en.vec',binary=False)