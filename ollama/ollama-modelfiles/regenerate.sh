#!/bin/sh
ollama pull dolphin-llama3
ollama pull dolphin-mistral
ollama pull dolphin-phi3
ollama pull mistral-nemo

ollama create magnus -f magnus.modelfile
ollama create morpheus -f morpheus.modelfile
ollama create neo -f neo.modelfile
ollama create nemo -f nemo.modelfile
