class CustomContextMethod:
    def __init__(self):
        print("Init context")
        self.value = 1

    def testContext(self):
        self.value += 1
        print("Custom context test")