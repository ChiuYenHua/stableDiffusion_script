########################################## Basic settings
# Update software
sudo apt update && sudo apt -y upgrade

# Clone repo (SD webui)
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui

# Add args in webui-user.sh
# "--listen" for port forwarding
# "--port xxxx" for specific port
echo -e '\nexport COMMANDLINE_ARGS="--listen --port 8889"' >> stable-diffusion-webui/webui-user.sh

# For install models in SD
sudo apt -y install aria2


########################################## Models, Lora, Embeddings...
# Models: 2-dimentions
#aria2c -c -x 16 -s 16 "https://civitai.com/api/download/models/5581" -o "stable-diffusion-webui/models/Stable-diffusion/AnythingElse_V4.safetensors"
aria2c -c -x 16 -s 16 "https://civitai.com/api/download/models/57618" -o "stable-diffusion-webui/models/Stable-diffusion/Counterfeit-V3.safetensors"
#aria2c -c -x 16 -s 16 "https://civitai.com/api/download/models/4224" -o "stable-diffusion-webui/models/Stable-diffusion/Dreamlike_Photoreal_2.safetensors"

# Models: Realistic
#aria2c -c -x 16 -s 16 "https://civitai.com/api/download/models/501240" -o "stable-diffusion-webui/models/Stable-diffusion/Realistic_vision.safetensors"
aria2c -c -x 16 -s 16 "https://civitai.com/api/download/models/507319" -o "stable-diffusion-webui/models/Stable-diffusion/LOFI_V5.safetensors"

# Models: 2.5D
#aria2c -c -x 16 -s 16 "https://civitai.com/api/download/models/64094" -o "stable-diffusion-webui/models/Stable-diffusion/never_ending_dream.safetensors"
aria2c -c -x 16 -s 16 "https://civitai.com/api/download/models/4007" -o "stable-diffusion-webui/models/Stable-diffusion/ProtogenV2_2.safetensors"

# Lora
aria2c -c -x 16 -s 16 "https://civitai.com/api/download/models/9208" -o "stable-diffusion-webui/models/Lora/EasyNegative.safetensors"
aria2c -c -x 16 -s 16 "https://civitai.com/api/download/models/67325" -o "stable-diffusion-webui/models/Lora/Asian_girls_face.safetensors"

# Embeddings
aria2c -c -x 16 -s 16 "https://civitai.com/api/download/models/20068" -o "stable-diffusion-webui/embeddings/badhandv4.safetensors"


########################################## Extensions





########################################## Start-up
#stable-diffusion-webui/webui.sh
python3 stable-diffusion-webui/launch.py