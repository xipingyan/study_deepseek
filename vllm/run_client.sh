source ./python-env/bin/activate
export LD_LIBRARY_PATH=/mnt/data_nvme1n1p1/xiping_workpath/deepseek/vllm/python-env/lib/python3.10/site-packages/nvidia/nvjitlink/lib/:$LD_LIBRARY_PATH
export CUDA_VISIBLE_DEVICES=0

# curl http://localhost:8000/v1/completions \
#     -H "Content-Type: application/json" \
#     -d '{
#         "model": "../models/DeepSeek-R1-Distill-Qwen-7B",
#         "prompt": "San Francisco is a",
#         "max_tokens": 250,
#         "temperature": 0.6
#     }'

# Way2
# python client_openai.py

# Way3
curl http://localhost:8000/v1/chat/completions \
    -H "Content-Type: application/json" \
    -d '{
        "model": "../models/DeepSeek-R1-Distill-Qwen-7B",
        "messages": [
            {"role": "system", "content": "You are a helpful assistant."},
            {"role": "user", "content": "Who won the world series in 2020?"}
        ]
    }'
