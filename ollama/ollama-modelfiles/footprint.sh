#!/bin/sh
ollama run axel why is the sky blue 
ollama ps > mem.txt
ollama run beau why is the sky blue
ollama ps >> mem.txt
ollama run cody why is the sky blue
ollama ps >> mem.txt
ollama run dean why is the sky blue
ollama ps >> mem.txt
ollama run enzo why is the sky blue
ollama ps >> mem.txt
cat mem.txt
