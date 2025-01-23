#!/bin/sh
ollama pull llama3.2:3b
ollama pull mistral-nemo
ollama pull qwen2.5:14b
ollama pull hermes3
ollama pull phi4
ollama pull deepseek-r1:8b

ollama create axel -f axel.modelfile
ollama create beau -f beau.modelfile
ollama create cody -f cody.modelfile
ollama create dean -f dean.modelfile
ollama create enzo -f enzo.modelfile
ollama create fred -f fred.modelfile
