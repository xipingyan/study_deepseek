from openai import OpenAI

# Modify OpenAI's API key and API base to use vLLM's API server.
openai_api_key="EMPTY"
openai_api_base="http://localhost:8000/v1"
client=OpenAI(api_key=openai_api_key, base_url=openai_api_base)

completion=client.completions.create(model="../models/DeepSeek-R1-Distill-Qwen-7B", prompt="San Francisco is a")
print('Completion result:', completion)
