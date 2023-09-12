WANDB_PROJECT=llama-7b-embedding python3 run.py \
--output_dir="./embedding-model-llama" \
--model_name_or_path="./llama-7b-embedding" \
--train_data="/home/ubuntu/embedding/train-dataset/twitter-train-dataset.json" \
--per_device_train_batch_size="5" \
--learning_rate="2e-5" \
--num_train_epochs="5" \
--max_seq_length 4096 \
--save_steps="500" \
--save_total_limit="3" \
--do_train \
--gradient_checkpointing \
--logging_steps 20 \
--normalized True \
--temperature 0.02 \
--query_max_len 4096 \
--passage_max_len 4096 \
--train_group_size 3  \
--sentence_pooling_method="mean" \
--bf16