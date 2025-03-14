import requests


def test_app_response_standard():
    """Test the application's response."""
    url = "http://localhost:8001/"
    response = requests.get(url)
    assert response.status_code == 200
    assert "Hello from Docker!" in response.text
    assert "I have been seen" in response.text


def test_app_response_include():
    """Test the application's response."""
    url = "http://localhost:8002/"
    response = requests.get(url)
    assert response.status_code == 200
    assert "Hello from Docker!" in response.text
    assert "I have been seen" in response.text


def test_app_response_multifile():
    """Test the application's response."""
    url = "http://localhost:8003/"
    response = requests.get(url)
    assert response.status_code == 200
    assert "Hello from Docker!" in response.text
    assert "I have been seen" in response.text
