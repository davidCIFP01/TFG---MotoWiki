import requests
import os

# Clave de API de Bing Search
subscription_key = 'YOUR_BING_SEARCH_API_KEY'
search_url = "https://api.bing.microsoft.com/v7.0/images/search"

# List of search terms
search_terms = ["YBR125", "MT07"]

def get_image_url(search_term):
    headers = {"Ocp-Apim-Subscription-Key": subscription_key}
    params = {"q": search_term, "license": "public", "imageType": "photo"}
    response = requests.get(search_url, headers=headers, params=params)
    response.raise_for_status()
    search_results = response.json()
    if search_results['value']:
        return search_results['value'][0]['contentUrl']
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
