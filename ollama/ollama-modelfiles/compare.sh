#!/bin/sh
echo '-axel----------------------------------------' > comp.txt
ollama run axel Who was Alger Hiss? >> comp.txt
echo '-beau----------------------------------------' >> comp.txt
ollama run beau Who was Alger Hiss? >> comp.txt
echo '-cody----------------------------------------' >> comp.txt
ollama run cody Who was Alger Hiss? >> comp.txt
echo '-dean----------------------------------------' >> comp.txt
ollama run dean Who was Alger Hiss? >> comp.txt
echo '-enzo----------------------------------------' >> comp.txt
ollama run enzo Who was Alger Hiss? >> comp.txt
echo '-fred----------------------------------------' >> comp.txt
ollama run fred Who was Alger Hiss? >> comp.txt
echo '-glen----------------------------------------' >> comp.txt
ollama run glen Who was Alger Hiss? >> comp.txt
echo '-hugo----------------------------------------' >> comp.txt
ollama run hugo Who was Alger Hiss? >> comp.txt
echo '-ivan----------------------------------------' >> comp.txt
ollama run ivan Who was Alger Hiss? >> comp.txt
echo '-jack----------------------------------------' >> comp.txt
ollama run jack Who was Alger Hiss? >> comp.txt
echo '-****----------------------------------------' >> comp.txt
cat comp.txt
