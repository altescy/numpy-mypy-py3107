from typing import Protocol


class _IOProtocol(Protocol):
    def seek(self, offset: int, whence: int, /) -> object: ...
