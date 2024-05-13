from googlesearch import search
import requests
from bs4 import BeautifulSoup
from PIL import Image
from io import BytesIO
import os

def download_images(query, num_images=50):
    search_url = f"https://www.google.com/search?tbm=isch&q={query}"
    headers = {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36"
    }

    response = requests.get(search_url, headers=headers)
    soup = BeautifulSoup(response.text, 'html.parser')
    images = soup.find_all('img')

    if not os.path.exists(query):
        os.makedirs(query)

    count = 0
    for img in images:
        if count >= num_images:
            break
        try:
            img_url = img['src']
            img_response = requests.get(img_url)
            img_data = Image.open(BytesIO(img_response.content))
            img_data.save(os.path.join(query, f"image_{count + 1}.jpg"))
            count += 1
        except Exception as e:
            print(f"Could not download image {count + 1}: {e}")

if __name__ == "__main__":
    query = input("Enter search query: ")
    download_images(query)
