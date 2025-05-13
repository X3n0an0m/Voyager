import webbrowser
import streamlit as st

st.title("Voyager")

search_query = st.text_input("type de naam van de website.: ").strip().lower()

websites = {
  'youtube': 'https://www.youtube.com',
  'google': 'https://www.google.com',
  'chatgpt': 'https://www.chatgpt.com',
  'tiktok': 'https://www.tiktok.com'
}

if st.button("Open website"):
  if search_query in websites:
    st.success(f"Opening {search_query} ")
    webbrowser.open(websites[search_query], new=2)
else:
  st.error("Website niet gevonden.")
