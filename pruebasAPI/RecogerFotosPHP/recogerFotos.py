import requests
from bs4 import BeautifulSoup
import os

# List of search terms
search_terms = ["example search term 1", "example search term 2"]

def get_image_url(search_term):
    # Construct the URL for Google Image search
    search_url = f"https://www.google.com/search?hl=en&tbm=isch&q={search_term.replace(' ', '+')}"
    headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3'}
    
    response = requests.get(search_url, headers=headers)
    soup = BeautifulSoup(response.text, 'html.parser')
    
    # Find the first image URL
    images = soup.find_all('img')
    if images:
        first_image_url = images[0].get('src')
        return first_image_url
    return None

def download_image(image_url, save_path):
    if image_url:
        response = requests.get(image_url)
        if response.status_code == 200:
            with open(save_path, 'wb') as f:
                f.write(response.content)
            print(f"Downloaded {save_path}")
        else:
            print(f"Failed to download image from {image_url}")
    else:
        print("No image URL provided.")

if __name__ == "__main__":
    # Ensure the images directory exists
    os.makedirs('images', exist_ok=True)
    
    # Process each search term
    for term in search_terms:
        print(f"Searching for images of: {term}")
        img_url = get_image_url(term)
        if img_url:
            filename = os.path.join('images', term.replace(' ', '_') + '.jpg')
            download_image(img_url, filename)
        else:
            print(f"No images found for {term}")