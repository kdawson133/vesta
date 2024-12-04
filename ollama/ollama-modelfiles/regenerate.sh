#!/bin/sh
ollama pull llama3.2:3b
ollama pull zephyr
ollama pull notus
ollama pull mistral-nemo
ollama pull hf.co/arcee-ai/SuperNova-Medius-GGUF
ollama pull qwen2.5:14b

ollama create axel -f axel.modelfile
ollama create beau -f beau.modelfile
ollama create cody -f cody.modelfile
ollama create dean -f dean.modelfile
ollama create enzo -f enzo.modelfile
ollama create fred -f fred.modelfile


