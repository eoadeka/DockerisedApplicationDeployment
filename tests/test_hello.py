import pytest
from app.hello import app

def test_hello():
    response = app.test_client().get()
    assert response.status_code == 200
    print()

test_hello()