from robyn import Robyn

app = Robyn(__file__)


@app.get("/")
async def h(request):
    return "Hello, world!"


from hello_world import square

print(square(5))


app.start(port=8080)
