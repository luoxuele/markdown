

https://pytorch.org/get-started/locally/

pip install -U openai-whisper
whisper --help
~/.cache\whisper

time whisper --model small.en 20230401-003000-VLE122-program.mp3 --threads 16
real    56m 59.35s
user    0m 0.00s
sys     0m 0.00s

time whisper --model base.en 20230331-003000-VLE122-program.mp3 --output_dir 20230331
real    18m 20.17s
user    0m 0.00s
sys     0m 0.00s

time whisper --model small.en 20230402-003000-VLE122-program.mp3 --output_dir 20230402
real    55m 46.74s

