SRC_MODEL_DIR="../checkpoint/"        ## Put the source model here

PORT=10001
MEMO="target"

for SEED in 2021 2022
do
    python main_csfda.py \
    seed=${SEED} port=${PORT} memo=${MEMO} project="VISDA-C" \
    data.data_root="${PWD}/data/" data.workers=16 \
    data.dataset="VISDA-C" data.source_domains="[train]" data.target_domains="[validation]" \
    model_src.arch="resnet101" \
    model_tta.src_log_dir=${SRC_MODEL_DIR} \
    optim.lr=2e-4
done
