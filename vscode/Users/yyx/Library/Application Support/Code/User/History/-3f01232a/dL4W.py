from robyn import Robyn

# app = Robyn(__file__)


@app.get("/")
async def h(request):
    return "Hello, world!"


from hello_world import say_hello

say_hello()


app.start(port=8080)


