
def thing():
    pass

class fibbo(object):
    """creates iterator that computes fibbonocci series
    """


    def __init__(self, stop):
        self.current = 0
        self.stop = stop
        self.step = 1
        self.i = 0


    def __iter__(self):
        return self


    def next(self):
        if self.i < self.stop:
            self.current += self.step
            self.step = self.current - self.step
            self.i += 1
            return self.current
        else: raise StopIteration


if __name__ == "__main__":
    temp = fibbo(20)
    for t in temp:
        import pdb; pdb.set_trace()
        print t