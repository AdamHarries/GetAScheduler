CU_FILES = $(wildcard *.cu)
GPU_OUT_FILES = $(patsubst %.cu,%.gpu_out,$(CU_FILES))

C_FILES = $(wildcard *.c)
CPU_OUT_FILES = $(patsubst %.c,%.cpu_out,$(C_FILES))

%.gpu_out: %.cu
	nvcc -I/opt/cuda/include/ $(patsubst %.gpu_out,%.cu,$@) -arch=sm_20 -lm -o $@

%.cpu_out: %.c
	gcc $(patsubst %.cpu_out,%.c,$@) -std=c99 -lm -o $@

all: $(CPU_OUT_FILES) $(GPU_OUT_FILES)

clean:
	rm -f *.out
