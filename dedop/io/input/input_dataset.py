class InputDataset:
    def __init__(self, dataset, cst, chd):
        self._dset = dataset
        self.cst = cst
        self.chd = chd

    def close(self):
        self._dset.close()

    def __iter__(self):
        for packet in self._dset:
            yield packet

    def __getitem__(self, index):
        return self._dset[index]
