#!/bin/sh
ollama pull llama3.2:3b
ollama pull zephyr
ollama pull notus
ollama pull mistral-nemo
ollama pull hf.co/arcee-ai/SuperNova-Medius-GGUF
ollama pull qwen2.5:14b
ollama pull mattw/llama2-13b-tiefighter
ollama pull hermes3
ollama pull everythinglm
ollama pull orcha2:13b

ollama create axel -f axel.modelfile
ollama create beau -f beau.modelfile
ollama create cody -f cody.modelfile
ollama create dean -f dean.modelfile
ollama create enzo -f enzo.modelfile
ollama create fred -f fred.modelfile
ollama create glen -f glen.modelfile
ollama create hugo -f hugo.modelfile
ollama create ivan -f ivan.modelfile
ollama create jack -f jack.modelfile
