from app import index


def test_hello_world():
    result = index()
    assert result == '<h1>Test app</h1>'
