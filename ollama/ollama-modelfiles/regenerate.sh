#!/bin/sh
ollama pull hf.co/mradermacher/Llama-3.2-3B-Instruct-uncensored-GGUF
ollama pull notus
ollama pull hf.co/arcee-ai/SuperNova-Medius-GGUF
ollama pull mistral-nemo

ollama create magnus -f magnus.modelfile
ollama create morpheus -f morpheus.modelfile
ollama create neo -f neo.modelfile
ollama create nemo -f nemo.modelfile
