POINT_NORMALIZATION = 36.4 #normalize by point change in round that yields std.dev of 1

ACTION_EXPERIENCE_BANK_SIZE = 1000000 #6.76x the amount of bet experience generated
BET_EXPERIENCE_BANK_SIZE    = 150000
EVAL_EXPERIENCE_BANK_SIZE   = 300000

#### RETRAINING
RETRAIN_BATCH_SIZE = 256
RETRAIN_EPOCHS = 1
REG_CONST = 0.0001
LEARNING_RATE = 0.1
MOMENTUM = 0.9
TRAINING_LOOPS = 10