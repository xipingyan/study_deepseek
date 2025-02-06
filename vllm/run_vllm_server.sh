export LD_LIBRARY_PATH=/mnt/data_nvme1n1p1/xiping_workpath/deepseek/vllm/python-env/lib/python3.10/site-packages/nvidia/nvjitlink/lib/:$LD_LIBRARY_PATH
export CUDA_VISIBLE_DEVICES=0

model=../models/DeepSeek-R1-Distill-Qwen-7B
#model=../models/DeepSeek-R1-Distill-Qwen-32B
unset http_proxy
unset https_proxy
unset HTTP_PROXY
unset HTTPS_PROXY

export CUDA_DEVICE_ORDER=PCI_BUS_ID

CUDA_VISIBLE_DEVICE=0 VLLM_HOST_IP=10.67.108.170 vllm serve $model --tensor-parallel-size 1 --max-model-len 24575 --enforce-eager --dtype=half

#--dtype=half

