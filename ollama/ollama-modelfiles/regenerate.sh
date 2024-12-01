#!/bin/sh
ollama pull llama3.2:3b
ollama pull notus
ollama pull hf.co/arcee-ai/SuperNova-Medius-GGUF
ollama pull mistral-nemo

ollama create magnus -f magnus.modelfile
ollama create morpheus -f morpheus.modelfile
ollama create neo -f neo.modelfile
ollama create nemo -f nemo.modelfile
