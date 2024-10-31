#!/bin/sh
ollama pull dolphin-llama3
ollama pull dolphin-mistral
ollama pull dolphin-phi3

ollama create magnus -f magnus.modelfile
ollama create morpheus -f morpheus.modelfile
ollama create neo -f neo.modelfile

