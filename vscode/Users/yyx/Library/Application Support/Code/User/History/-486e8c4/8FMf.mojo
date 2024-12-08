from max.driver import Tensor
from max.tensor import TensorShape

def main():
    tensor = Tensor[DType.float32, rank=2](TensorShape(1, 2))
    tensor[0, 0] = 1.0