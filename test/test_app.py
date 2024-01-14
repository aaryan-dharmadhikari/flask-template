from app import hello


def test_hello():
    result = hello()
    assert result == "Hello, world!"
