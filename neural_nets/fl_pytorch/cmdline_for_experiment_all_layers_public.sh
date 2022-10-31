# Command line for experiment with job_id=QSGD
python run.py \
--global-lr "3.0" \
--local-lr "1" \
--run-id "qsgd_3.0_31546" \
--logfile "../logs/qsgd_3.0.txt" \
--out "qsgd_3.0.bin" \
--algorithm "dcgd" \
--rounds "24000" \
--gpu "0" \
--compute-type "fp32" \
--comment "" \
--client-sampling-type "uniform" \
--num-clients-per-round "10" \
--global-optimiser "sgd" \
--global-weight-decay "0.0" \
--number-of-local-iters "1" \
--run-local-steps \
--batch-size "600" \
--local-optimiser "sgd" \
--local-weight-decay "0.0" \
--dataset "cifar10_fl" \
--loss "crossentropy" \
--model "resnet18" \
--per-round-clean-torch-cache \
--decaying-lr-one-inv-epoch \
--shift-decaying-lr-in-epochs "200" \
--metric "top_1_acc" \
--global-regulizer "none" \
--global-regulizer-alpha "0.0" \
--checkpoint-dir "../check_points" \
--do-not-save-eval-checkpoints \
--data-path "../data/" \
--log-gpu-usage \
--num-workers-train "4" \
--num-workers-test "4" \
--deterministic \
--manual-init-seed "123" \
--manual-runtime-seed "1" \
--group-name "" \
--eval-every "100" \
--eval-async-threads "0" \
--save-async-threads "0" \
--threadpool-for-local-opt "0" \
--algorithm-options "internal_sgd:sgd-multi,tau:10%" \
--client-compressor "randk:5%" \
--extra-track "full_gradient_norm_train,full_objective_value_train,full_gradient_norm_val,full_objective_value_val" \
--allow-use-nv-tensorcores \
--initialize-shifts-policy "zero" \
--wandb-key "xxxxxxxxxxx" \
--wandb-project-name "vvvvvvvvvv" \
--loglevel "debug" \
--logfilter ".*" \
--out "QSGD.bin"

# Command line for experiment with job_id=QSGD-RR
python run.py \
--global-lr "3.0" \
--run-id "qsgd_rr_3.0_29647" \
--logfile "../logs/qsgd_rr_3.0.txt" \
--out "rr_qsgd_3.0.bin" \
--algorithm "dcgd" \
--rounds "24000" \
--gpu "0" \
--compute-type "fp32" \
--local-lr "1" \
--comment "" \
--client-sampling-type "uniform" \
--num-clients-per-round "10" \
--global-optimiser "sgd" \
--global-weight-decay "0.0" \
--number-of-local-iters "1" \
--run-local-steps \
--batch-size "600" \
--local-optimiser "sgd" \
--local-weight-decay "0.0" \
--dataset "cifar10_fl" \
--loss "crossentropy" \
--model "resnet18" \
--per-round-clean-torch-cache \
--decaying-lr-one-inv-epoch \
--shift-decaying-lr-in-epochs "1000" \
--metric "top_1_acc" \
--global-regulizer "none" \
--global-regulizer-alpha "0.0" \
--checkpoint-dir "../check_points" \
--do-not-save-eval-checkpoints \
--data-path "../data/" \
--log-gpu-usage \
--num-workers-train "4" \
--num-workers-test "4" \
--deterministic \
--manual-init-seed "123" \
--manual-runtime-seed "2" \
--group-name "" \
--eval-every "100" \
--eval-async-threads "0" \
--save-async-threads "0" \
--threadpool-for-local-opt "0" \
--algorithm-options "internal_sgd:iterated-minibatch,reshuffle:until_exhausted,tau:10%" \
--client-compressor "randk:5%" \
--extra-track "full_gradient_norm_train,full_objective_value_train,full_gradient_norm_val,full_objective_value_val" \
--allow-use-nv-tensorcores \
--initialize-shifts-policy "zero" \
--wandb-key "xxxxxxxxxxx" \
--wandb-project-name "vvvvvvvvvv" \
--loglevel "debug" \
--logfilter ".*" \
--out "QSGD-RR.bin"

# Command line for experiment with job_id=DIANA
python run.py \
--global-lr "1.0" \
--run-id "diana_3.0_43667_200" \
--logfile "../logs/diana_3.0_43667_200.txt" \
--out "./diana_3.0_43667_200.bin" \
--algorithm "diana" \
--rounds "34000" \
--gpu "0" \
--compute-type "fp32" \
--local-lr "1" \
--comment "" \
--client-sampling-type "uniform" \
--num-clients-per-round "10" \
--global-optimiser "sgd" \
--global-weight-decay "0.0" \
--number-of-local-iters "1" \
--run-local-steps \
--batch-size "600" \
--local-optimiser "sgd" \
--local-weight-decay "0.0" \
--dataset "cifar10_fl" \
--loss "crossentropy" \
--model "resnet18" \
--per-round-clean-torch-cache \
--shift-decaying-lr-in-epochs "0" \
--metric "top_1_acc" \
--global-regulizer "none" \
--global-regulizer-alpha "0.0" \
--checkpoint-dir "../check_points" \
--do-not-save-eval-checkpoints \
--data-path "../data/" \
--log-gpu-usage \
--num-workers-train "5" \
--num-workers-test "5" \
--deterministic \
--manual-init-seed "123" \
--manual-runtime-seed "2" \
--group-name "" \
--eval-every "100" \
--eval-async-threads "0" \
--save-async-threads "0" \
--threadpool-for-local-opt "0" \
--algorithm-options "internal_sgd:iterated-minibatch,reshuffle:once_per_client,tau:10%" \
--client-compressor "randk:20%" \
--extra-track "full_gradient_norm_train,full_objective_value_train,full_gradient_norm_val,full_objective_value_val" \
--allow-use-nv-tensorcores \
--initialize-shifts-policy "zero" \
--wandb-key "xxxxxxxxxxx" \
--wandb-project-name "vvvvvvvvvv" \
--loglevel "debug" \
--logfilter ".*" \
--out "DIANA.bin"

# Command line for experiment with job_id=DIANA-RR
python run.py \
--global-lr "1.0" \
--run-id "diana_rr_3.0_43665_200" \
--logfile "../logs/diana_rr_3.0_43665_200.txt" \
--out "./diana_rr_3.0_43665_200.bin" \
--algorithm "diana-rr" \
--rounds "34000" \
--gpu "0" \
--compute-type "fp32" \
--local-lr "1" \
--comment "" \
--client-sampling-type "uniform" \
--num-clients-per-round "10" \
--global-optimiser "sgd" \
--global-weight-decay "0.0" \
--number-of-local-iters "1" \
--run-local-steps \
--batch-size "600" \
--local-optimiser "sgd" \
--local-weight-decay "0.0" \
--dataset "cifar10_fl" \
--loss "crossentropy" \
--model "resnet18" \
--per-round-clean-torch-cache \
--shift-decaying-lr-in-epochs "0" \
--metric "top_1_acc" \
--global-regulizer "none" \
--global-regulizer-alpha "0.0" \
--checkpoint-dir "../check_points" \
--do-not-save-eval-checkpoints \
--data-path "../data/" \
--log-gpu-usage \
--num-workers-train "5" \
--num-workers-test "5" \
--deterministic \
--manual-init-seed "123" \
--manual-runtime-seed "2" \
--group-name "" \
--eval-every "100" \
--eval-async-threads "0" \
--save-async-threads "0" \
--threadpool-for-local-opt "0" \
--algorithm-options "internal_sgd:iterated-minibatch,reshuffle:once_per_client,tau:10%" \
--client-compressor "randk:20%" \
--extra-track "full_gradient_norm_train,full_objective_value_train,full_gradient_norm_val,full_objective_value_val" \
--allow-use-nv-tensorcores \
--initialize-shifts-policy "zero" \
--wandb-key "xxxxxxxxxxx" \
--wandb-project-name "vvvvvvvvvv" \
--loglevel "debug" \
--logfilter ".*" \
--out "DIANA-RR.bin"