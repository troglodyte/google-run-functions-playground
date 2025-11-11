import functions_framework

def hello(request):
    name = request.args.get("name", "world")
    return f"Hellow, {name}!"


@functions_framework.cloud_event
def on_pubsub(event):
    data = event.data.get("message", {}).get("data")
    print(f"Got pubsub message (base64) - {data}")


