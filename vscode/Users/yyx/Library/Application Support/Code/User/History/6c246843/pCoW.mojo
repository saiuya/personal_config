from python import Python

fn main():
    # Try importing numpy with error handling
    try:
        np = Python.import_module("numpy")
        array = np.array([1, 2, 11])
        print(array)
    except e:
        print("Error importing numpy: ", e)


fn myFun():
  ...


struct MyPair:
    first
    second
    def __init__(inout self, first: Int, second: Int):
        self.first = first
        self.second = second

    def dump(self):
        print(self.first, self.second)



struct Span[
    is_mutable: Bool,
    T: CollectionElement,
    lifetime: AnyLifetime[is_mutable].type,
]():
  pass

