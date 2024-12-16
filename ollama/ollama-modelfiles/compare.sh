#!/bin/sh
query='What are the possible explainations of the UFO phenomena?'
echo '-axel----------------------------------------' > comp.txt
ollama run axel $query >> comp.txt
echo '-beau----------------------------------------' >> comp.txt
ollama run beau $query >> comp.txt
echo '-cody----------------------------------------' >> comp.txt
ollama run cody $query >> comp.txt
echo '-dean----------------------------------------' >> comp.txt
ollama run dean $query >> comp.txt
echo '-enzo----------------------------------------' >> comp.txt
ollama run enzo $query >> comp.txt
echo '-fred----------------------------------------' >> comp.txt
ollama run fred $query >> comp.txt
echo '-glen----------------------------------------' >> comp.txt
ollama run glen $query >> comp.txt
echo '-hugo----------------------------------------' >> comp.txt
ollama run hugo $query >> comp.txt
echo '-ivan----------------------------------------' >> comp.txt
ollama run ivan $query >> comp.txt
echo '-jack----------------------------------------' >> comp.txt
ollama run jack $query >> comp.txt
echo '-****----------------------------------------' >> comp.txt
cat comp.txt
