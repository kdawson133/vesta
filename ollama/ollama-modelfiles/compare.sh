#!/bin/sh
query='Crate a list of ancient civilizations in chronological order.'
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
echo '-****----------------------------------------' >> comp.txt
cat comp.txt
